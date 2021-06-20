# Basic


## File Browser

```bash
sudo pacman -S thunar file-roller p7zip unrar
```



### zip 压缩包乱码

> 避免方法：非 utf8 编码环境下（一般 windows 下的中文环境即是）不使用 zip 进行压缩（建议使用 [7z](https://wiki.archlinux.org/index.php/7z_(简体中文)))。 解决方案：安装使用 [unzip-iconv](https://aur.archlinux.org/packages/unzip-iconv/)AUR 或者 [unzip-natspec](https://aur.archlinux.org/packages/unzip-natspec/)AUR 取代原版的 [unzip](https://archlinux.org/packages/?name=unzip) 来解压缩，示例：
>
> ```
> $ unzip -O gbk file.zip
> ```
>
> `file.zip` 是压缩文件，`gbk` 是该文件的编码格式，以 `-O` 指定（原版 unzip 无 `-O` 选项）。

```bash
yay -S unzip-natspec p7zip-natspec
```

Then

```bash
unzip -O gbk file.zip
```









## Office



> The Document Foundation [wiki](https://wiki.documentfoundation.org/Fonts) mentions various fonts that are packaged by default with LibreOffice on Windows and macOS. 
>
> Also see [Fonts#Font packages](https://wiki.archlinux.org/index.php/Fonts#Font_packages).

```bash
yay -S ttf-caladea ttf-carlito ttf-dejavu ttf-gentium-basic ttf-liberation ttf-linux-libertine-g noto-fonts adobe-source-code-pro-fonts adobe-source-sans-pro-fonts adobe-source-serif-pro-fonts
```









# System Management

# Multi Media

## Music Player

```bash
# sudo pacman -S netease-cloud-music
sudo pacman -S netease-cloud-music-gtk
```





# Display

## Multiple Monitors

```bash
sudo pacman -S arandr
```





## Wallpaper

```bash
sudo pacman -S nitrogen
```





## GTK Themes

```bash
# gtk-theme
yay -S matcha-gtk-theme arc-gtk-theme

# icon-theme
sudo pacman -S papirus-icon-theme

# cursor-theme
sudo pacman -S bibata-cursor-theme
```






## QT Themes

```bash
sudo pacman -S qt5ct
# sudo pacman -S kvantummanager
```

Edit `~/.xinitrc` OR `~/.xprofile`:

```bash
export QT_QPA_PLATFORMTHEME=qt5ct
```









# Font

```bash
yay -S noto-fonts noto-fonts-emoji noto-fonts-cjk 
yay -S ttf-dejavu ttf-liberation ttf-symbola 
yay -S wqy-microhei wqy-microhei-lite adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts adobe-source-han-serif-cn-fonts adobe-source-han-sans-cn-fonts wqy-zenhei wqy-bitmapfont ttf-arphic-ukai 
yay -S font-manager
```





## Fontconfig

## Fix Displaying Japanese Characters While `Noto Sans CJK` Installed

```xml
<!-- ~/.config/fontconfig/fonts.conf -->

<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
	<!-- Set preferred serif, sans serif, and monospace fonts. -->
    <alias>
        <family>sans-serif</family>
        <prefer>
            <family>Noto Sans</family>
            <family>Noto Sans CJK SC</family>
            <family>Noto Sans CJK TC</family>
            <family>Noto Sans CJK JP</family>
            <family>Noto Sans CJK KR</family>
            <family>Droid Sans</family>
        </prefer>
    </alias>
    <alias>
        <family>serif</family>
        <prefer>
            <family>Noto Serif</family>
            <family>Noto Serif CJK SC</family>
            <family>Noto Serif CJK TC</family>
            <family>Noto Serif CJK JP</family>
            <family>Noto Serif CJK KR</family>
            <family>Droid Serif</family>
        </prefer>
    </alias>
    <alias>
        <family>monospace</family>
        <prefer>
            <family>Noto Sans Mono</family>
            <family>Noto Sans Mono CJK SC</family>
            <family>Noto Sans Mono CJK TC</family>
            <family>Noto Sans Mono CJK JP</family>
            <family>Noto Sans Mono CJK KR</family>
            <family>Droid Sans Mono</family>
        </prefer>
    </alias>
    <alias>
        <family>mono</family>
        <prefer>
            <family>Noto Sans Mono</family>
            <family>Noto Sans Mono CJK SC</family>
            <family>Noto Sans Mono CJK TC</family>
            <family>Noto Sans Mono CJK JP</family>
            <family>Noto Sans Mono CJK KR</family>
            <family>Droid Sans Mono</family>
        </prefer>
    </alias>
</fontconfig>
```







# Proxy

## Chromium

- Download `SwitchyOmega_Chromium.crx` from [SwitchyOmega](https://github.com/FelisCatus/SwitchyOmega) and rename it to `SwitchyOmega_Chromium.zip`.

    ```bash
    wget https://github.com/FelisCatus/SwitchyOmega/releases/download/v2.5.20/SwitchyOmega_Chromium.crx
    ```

- Go to chrome://extensions/ and enable Developer Mode.

- Then put `SwitchyOmega_Chromium.zip` into there.

    - Autoproxy: https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt





## Clash

```bash
sudo pacman -S clash

cd .config/clash

wget -O config.yaml https://d.cloudso.club/link/????????????clash=1&log-level=info

clash -d ~/.config/clash
```







## V2ray

```bash
sudo pacman -S v2ray
```



### NO GUI

My workflow:

- First export client side config file from `v2rayN` or `qv2ray`.

  - socks and http

    ```json
        "inbounds": [
            {
                "tag": "proxy",
                "port": 1081,
                "listen": "127.0.0.1",
                "protocol": "socks",
                "sniffing": {
                    "enabled": true,
                    "destOverride": [
                        "http",
                        "tls"
                    ]
                },
                "settings": {
                    "auth": "noauth",
                    "udp": true,
                    "ip": null,
                    "address": null,
                    "clients": null,
                    "decryption": null
                },
                "streamSettings": null
            },
            {
                "tag": "proxy",
                "port": 1082,
                "listen": "127.0.0.1",
                "protocol": "http",
                "sniffing": {
                    "enabled": true,
                    "destOverride": [
                        "http",
                        "tls"
                    ]
                },
                "settings": {
                    "auth": "noauth",
                    "udp": false
                }
            }
        ],
    ```

- Then upload the config file.

  And check the config file.

  ```bash
  v2ray -test config.json
  ```

- Then

  ```bash
  sudo cp /etc/v2ray/config.json /etc/v2ray/config.json.bak
  sudo cp config.json /etc/v2ray/config.json
  sudo systemctl enable v2ray 
  sudo systemctl start v2ray
  ```

- Now test it.

  ```bash
  lucas@arch ~/Downloads> export http_proxy=http://127.0.0.1:1082/; export https_proxy=$http_proxy
  ```

  Note that your proxy port might be different.

  ```bash
  lucas@arch ~/Downloads> wget google.com
  --2021-02-05 00:43:55--  http://google.com/
  Connecting to 127.0.0.1:1082... connected.
  Proxy request sent, awaiting response... 301 Moved Permanently
  Location: http://www.google.com/ [following]
  --2021-02-05 00:43:56--  http://www.google.com/
  Reusing existing connection to 127.0.0.1:1082.
  Proxy request sent, awaiting response... 200 OK
  Length: unspecified [text/html]
  Saving to: ‘index.html’
  
  index.html                                 [ <=>                                                                         ]  13.79K  --.-KB/s    in 0.009s
  
  2021-02-05 00:43:56 (1.48 MB/s) - ‘index.html’ saved [14117]
  ```

  









## Command line proxy

### By proxychains

```bash
sudo pacman -S proxychains
```

Edit `/etc/proxychains.conf`:

```bash
socks5 127.0.0.1 1080
```

> These "127.0.0.1 1080" stuff depends on your own proxy softwares' setting.
>
> Like:
>
> ![image-20210125211926100]([03]Arch-Desktop-Configuration-Guide.assets/image-20210125211926100.png)

Then, `proxychains-ng` can be launched with

```bash
proxychains program
```

- You can even proxy `pacman`, like this

  ```bash
  su
  proxychains pacman -Syyu
  ```






### By setting environment variables

In terminal:

```bash
export http_proxy=http://127.0.0.1:2080/; export https_proxy=$http_proxy
```

![image-20210125212255597]([03]Arch-Desktop-Configuration-Guide.assets/image-20210125212255597.png)









# Virtual Machine

## Vmware

**First install vmware,**

```bash
sudo pacman -S vmware-workstation
```

**Then,** as desired, enable some of the following services:

- `vmware-networks.service` for guest network access
- `vmware-usbarbitrator.service` for connecting USB devices to guest

**And** load the VMware modules:

```bash
sudo modprobe -a vmw_vmci vmmon
```

**Lastly,** entering the Workstation Pro license key from a terminal:

```bash
sudo /usr/lib/vmware/bin/vmware-vmx-debug --new-sn XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
```

- If the above does not work, you can try:

    ```
    sudo /usr/lib/vmware/bin/vmware-enter-serial
    ```



### 16.0 License Key

```bash
ZF3R0-FHED2-M80TY-8QYGC-NPKYF
YF390-0HF8P-M81RQ-2DXQE-M2UT6
ZF71R-DMX85-08DQY-8YMNC-PPHV8
```



### **Fix `no 3D acceleration`**

`vim ~/.vmware/preferences`

```bash
mks.gl.allowBlacklistedDrivers = "TRUE"
```





### Fix `drag and drop` and `copy and paste` not working

Try running:

```bash
vmware-user # Tool to enable clipboard sharing (copy/paste) between host and guest.
vmware-vmblock-fuse # Filesystem utility. Enables drag & drop functionality between host and guest through FUSE
```

To make this permanent

```bash
echo "vmware-user &" >> ~/.xprofile
echo "vmware-vmblock-fuse &" >> ~/.xprofile
```





### Setup Shared Folder

- `vmhgfs-fuse` - Utility for mounting vmhgfs shared folders.

Share a folder by selecting *Edit virtual machine settings > Options > Shared Folders > Always enabled*, and creating a new share.

The shared folders should be visible with:

```bash
vmware-hgfsclient
```

Now the folder can be mounted:

```bash
mkdir <shared folders root directory>
vmhgfs-fuse -o allow_other -o auto_unmount .host:/<shared_folder> <shared folders root directory>
```

Example:

```bash
mkdir $HOME/SHARED
vmhgfs-fuse -o allow_other -o auto_unmount .host:/D $HOME/SHARED
```



#### fstab

Add a rule for each share:

```bash
sudo echo '.host:/<shared_folder> <shared folders root directory> fuse.vmhgfs-fuse nofail,allow_other 0 0' >> /etc/fstab
```

Example:

```bash
sudo echo '.host:/D $HOME/SHARED fuse.vmhgfs-fuse nofail,allow_other 0 0' >> /etc/fstab
```









## Virtual Box

> [Install](https://wiki.archlinux.org/index.php/Install) the [virtualbox](https://www.archlinux.org/packages/?name=virtualbox) package. You will need to choose a package to provide host modules:
>
> - for the [linux](https://www.archlinux.org/packages/?name=linux) kernel choose [virtualbox-host-modules-arch](https://www.archlinux.org/packages/?name=virtualbox-host-modules-arch)
> - for any other [kernel](https://wiki.archlinux.org/index.php/Kernel) (including [linux-lts](https://www.archlinux.org/packages/?name=linux-lts)) choose [virtualbox-host-dkms](https://www.archlinux.org/packages/?name=virtualbox-host-dkms)

```bash
sudo pacman -S virtualbox virtualbox-host-modules-arch
```



### Load the VirtualBox kernel modules

```bash
sudo modprobe vboxdrv
```

The following modules are only required in advanced configurations:

- `vboxnetadp` and `vboxnetflt` are both needed when you intend to use the [bridged](https://www.virtualbox.org/manual/ch06.html#network_bridged) or [host-only networking](https://www.virtualbox.org/manual/ch06.html#network_hostonly) feature.

```bash
sudo modprobe vboxnetadp vboxnetflt
```

