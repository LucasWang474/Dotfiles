

## 2.4 Localization

**First edit `/etc/locale.gen`** and uncomment 

```bash
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8
```

A quick way of doing so is using *sed* with the command below.

```bash
sed 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' -i /etc/locale.gen

sed 's/#zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/' -i /etc/locale.gen
```

**Then **Generate the locales:

```
locale-gen
```

**Lastly** create the [locale.conf(5)](https://jlk.fjfi.cvut.cz/arch/manpages/man/locale.conf.5) file, and [set the LANG variable](https://wiki.archlinux.org/index.php/Locale#Setting_the_system_locale) accordingly:







## 2.5 Network Configuration

**First** create your hostname:

```bash
echo "arch" > /etc/hostname
```

**Then** add matching entries to [hosts(5)](https://jlk.fjfi.cvut.cz/arch/manpages/man/hosts.5):

```bash
cat > /etc/hosts << EOF
127.0.0.1    localhost
::1          localhost
127.0.1.1    arch.localdomain arch
EOF
```



### Server

The easiest way to configure networking on a server is through DHCP.

```bash
pacman -S dhcpcd
```

Make DHCP automatically run at boot.

```bash
systemctl enable systemd-networkd
systemctl enable dhcpcd
```

Make DNS resolution automatically run at boot.

```bash
systemctl enable systemd-resolved
```



#### ssh

By default, root login via ssh is not enabled. We need to change some settings inside the `sshd_config` file to enable root login.

Make a backup copy of the `sshd_config` file. You should be able to use tab auto-completion to make this easier on the web console.

```bash
cp /etc/ssh/sshd_config /etc/ssh/sshd_conf.bak
```

Edit  the `/etc/ssh/sshd_config` file. Find the following lines and make some changes to it.

```bash
vim /etc/ssh/sshd_config
```

```bash
#PermitRootLogin prohibit-password
PermitRootLogin yes
PasswordAuthentication yes
```

Then finally enable the SSH daemon on the console.

```bash
systemctl enable sshd
```







### Desktop

**Install network manager:**

```bash
pacman -S networkmanager network-manager-applet wpa_supplicant dialog 

systemctl enable NetworkManager
```







## 2.6 Set Root Password

```bash
passwd
```





## 2.7 Boot Loader

```bash
pacman -S grub efibootmgr dosfstools mtools ntfs-3g
pacman -S os-prober # for detecting other os
```

```bash
grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```



By default at boot, grub will wait for 5 seconds before choosing the default option. To disable this wait, use the following.

```bash
sed 's/^GRUB_TIMEOUT=5$/GRUB_TIMEOUT=1/' -i /etc/default/grub
```

**Note**: *If you still want access to the grub boot menu, you might want to set this to 1 second instead of 0.*



By default, grub gives the kernel the `quiet` option which `systemd` also follows. Use the following to show startup and shutdown messages.

```bash
sed 's/^GRUB_CMDLINE_LINUX_DEFAULT="quiet"$/GRUB_CMDLINE_LINUX_DEFAULT=""/' -i /etc/default/grub
```



Create the grub configuration.

```bash
grub-mkconfig -o /boot/grub/grub.cfg
```







## 2.8 Setting up a new user and SSH authentication

You should now be connected to your new Arch server over SSH and the basic install is complete, but we are not quite done. 

For improved security and convenience, you should set up a new username for yourself and configure SSH keys to it.



Start by creating a new unprivileged username using the command below. Name the account as you see fit.

```bash
useradd -mG wheel lucas
```

Then set a password for the new user.

```bash
passwd lucas
```

Allow members in group `wheel` to use `sudo`.

```bash
cp /etc/sudoers /etc/sudoers.new

sed 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/' -i /etc/sudoers.new

visudo -c -f /etc/sudoers.new && mv /etc/sudoers.new /etc/sudoers
```

Now, SSH daemon is already running **but the settings allow root to log in which can be insecure.** Revert the changes made to the sshd_config file by swapping it to the default config we backed up earlier.

```bash
cp /etc/ssh/sshd_conf.bak /etc/ssh/sshd_config
```

Then, restart the SSH daemon to apply the new configuration.

```bash
systemctl restart sshd
```



Next, generate an SSH key pair for your regular user **on your own computer.** You should preferably also secure the key with a password. On Linux systems, this can be achieved with the following command.

```bash
ssh-keygen
```

Once you have created a new SSH key pair, copy over the public part to your Arch Linux server. By default, the public SSH key is saved to `/home/username/.ssh/id_rsa.pub`.

Then on the cloud server, change into your new user account and create the following directory.

```bash
su lucas
mkdir ~/.ssh
```

The public SSH key should be saved to file at `/home/username/.ssh/authorized_keys`. Open a new file in a text editor, for example, by using `nano` and copy the public SSH key into this file.

```
nano ~/.ssh/authorized_keys
```

Then save the file and exit the editor.

Next, switch back to the root user by simply exiting your new username.

```
exit
```

You can then edit the `/etc/ssh/sshd_config` file according to your needs.

```
nano /etc/ssh/sshd_config
```

Here are some examples of changes you might wish to make:

- Disable the *sftp* subsystem if not needed by commenting out the line
- Disable password login by setting *PasswordAuthentication no*
- Speed up the login by setting SSH to only use IPv4 with *AddressFamily inet*

You can find more information about the available configuration options at the [ArchWiki](https://wiki.archlinux.org/index.php/OpenSSH#Protection).

After altering the configuration, restart the SSH daemon again as the *root* user.

```bash
systemctl restart sshd
```

Then test logging in by opening a new terminal window on your own machine, and connecting with the username you created earlier.

```bash
ssh lucas@ip-address
```





> ## Testing notes
>
> 
>
> After rebooting the system via SSH connection with `reboot` as the root user, **it might take a minute until the server accepts SSH connections again.** Booting itself is really fast, but the SSH daemon can take time to fully start.
>
> If SSH fails to connect after rebooting, logging in as any user via the web browser console connection should solve the issue and allow you to connect using SSH.





## 2.9 Configure time synchronization

For a lightweight time synchronization client with rough accuracy use the following.

```bash
systemctl enable --now systemd-timesyncd
```

If you would prefer better accuracy.

```bash
pacman -S ntp
systemctl enable --now ntpd
```





## Reboot
