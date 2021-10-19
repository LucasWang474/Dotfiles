# openconnect
# Autogenerated from man page /usr/share/man/man8/openconnect.8.gz
complete -c openconnect -l config -d 'Read further options from  CONFIGFILE before continuing to process options fr…'
complete -c openconnect -s b -l background -d 'Continue in background after startup'
complete -c openconnect -l pid-file -d 'Save the pid to  PIDFILE when backgrounding'
complete -c openconnect -s c -l certificate -d 'Use SSL client certificate  CERT which may be either a file name or, if OpenC…'
complete -c openconnect -s e -l cert-expire-warning -d 'Give a warning when SSL client certificate has  DAYS left before expiry'
complete -c openconnect -s k -l sslkey -d 'Use SSL private key  KEY which may be either a file name or, if OpenConnect h…'
complete -c openconnect -s C -l cookie -d 'Use authentication cookie R COOKIE '
complete -c openconnect -l cookie-on-stdin -d 'Read cookie from standard input'
complete -c openconnect -s d -l deflate -d 'Enable all compression, including stateful modes'
complete -c openconnect -s D -l no-deflate -d 'Disable all compression'
complete -c openconnect -l compression -d 'Set compression mode, where  MODE is one of R "stateless" , R "none" , or R "…'
complete -c openconnect -l force-dpd -d 'Use  INTERVAL as minimum Dead Peer Detection interval (in seconds) for CSTP a…'
complete -c openconnect -s g -l usergroup -d 'Use  GROUP as login UserGroup'
complete -c openconnect -s F -l form-entry -d 'Provide authentication form input, where  FORM and  OPTION are the identifier…'
complete -c openconnect -s h -l help -d 'Display help text'
complete -c openconnect -l http-auth -d 'Use only the specified methods for HTTP authentication to a server'
complete -c openconnect -s i -l interface -d 'Use  IFNAME for tunnel interface'
complete -c openconnect -s l -l syslog -d 'Use syslog for progress messages'
complete -c openconnect -l timestamp -d 'Prepend a timestamp to each progress message'
complete -c openconnect -l passtos -d 'Copy TOS / TCLASS of payload packet into DTLS and ESP packets'
complete -c openconnect -s U -l setuid -d 'Drop privileges after connecting, to become user  USER'
complete -c openconnect -l csd-user -d 'Drop privileges during execution of trojan binary or script (CSD, TNCC, or HI…'
complete -c openconnect -l csd-wrapper -d 'Run  SCRIPT instead of the trojan binary or script'
complete -c openconnect -l force-trojan -d 'Use  INTERVAL as interval (in seconds) for repeat execution of Trojan binary …'
complete -c openconnect -s m -l mtu -d 'Request  MTU from server as the MTU of the tunnel'
complete -c openconnect -l base-mtu -d 'Indicate  MTU as the path MTU between client and server on the unencrypted ne…'
complete -c openconnect -s p -l key-password -d 'Provide passphrase for certificate file, or SRK (System Root Key) PIN for TPM'
complete -c openconnect -s P -l proxy -d 'Use HTTP or SOCKS proxy for connection'
complete -c openconnect -l proxy-auth -d 'Use only the specified methods for HTTP authentication to a proxy'
complete -c openconnect -l no-proxy -d 'Disable use of proxy'
complete -c openconnect -l libproxy -d 'Use libproxy to configure proxy automatically (when built with libproxy suppo…'
complete -c openconnect -l key-password-from-fsid -d 'Passphrase for certificate file is automatically generated from the  fsid of …'
complete -c openconnect -s q -l quiet -d 'Less output'
complete -c openconnect -s Q -l queue-len -d 'Set packet queue limit to  LEN pkts'
complete -c openconnect -s s -l script -d 'Invoke  SCRIPT to configure the network after connection'
complete -c openconnect -s S -l script-tun -d 'Pass traffic to \'script\' program over a UNIX socket, instead of to a kernel t…'
complete -c openconnect -s u -l user -d 'Set login username to  NAME'
complete -c openconnect -s V -l version -d 'Report version number'
complete -c openconnect -s v -l verbose -d 'More output (may be specified multiple times for additional output)'
complete -c openconnect -s x -l xmlconfig -d 'XML config file'
complete -c openconnect -l authgroup -d 'Choose authentication login selection'
complete -c openconnect -l authenticate -d 'Authenticate only, and output the information needed to make the connection a…'
complete -c openconnect -l cookieonly -d 'Fetch and print cookie only; don\'t connect'
complete -c openconnect -l printcookie -d 'Print cookie before connecting'
complete -c openconnect -l cafile -d 'Additional CA file for server verification'
complete -c openconnect -l no-system-trust -d 'Do not trust the system default certificate authorities'
complete -c openconnect -l disable-ipv6 -d 'Do not advertise IPv6 capability to server'
complete -c openconnect -l dtls-ciphers -d 'Set OpenSSL ciphers to support for DTLS'
complete -c openconnect -l dtls12-ciphers -d 'Set OpenSSL ciphers for Cisco\'s DTLS v1. 2'
complete -c openconnect -l dtls-local-port -d 'Use  PORT as the local port for DTLS and UDP datagrams'
complete -c openconnect -l dump-http-traffic -d 'Enable verbose output of all HTTP requests and the bodies of all responses re…'
complete -c openconnect -l pfs -d 'Enforces Perfect Forward Secrecy (PFS)'
complete -c openconnect -l no-dtls -d 'Disable DTLS and ESP'
complete -c openconnect -l no-http-keepalive -d 'Version 8. 2. 2'
complete -c openconnect -l no-passwd -d 'Never attempt password (or SecurID) authentication'
complete -c openconnect -l no-xmlpost -d 'Do not attempt to post an XML authentication/configuration request to the ser…'
complete -c openconnect -l non-inter -d 'Do not expect user input; exit if it is required'
complete -c openconnect -l passwd-on-stdin -d 'Read password from standard input'
complete -c openconnect -l protocol -d 'Select VPN protocol  PROTO to be used for the connection'
complete -c openconnect -l token-mode -d 'Enable one-time password generation using the  MODE algorithm'
complete -c openconnect -l token-secret -d 'The secret to use when generating one-time passwords/verification codes'
complete -c openconnect -l reconnect-timeout -d 'Keep reconnect attempts until so much seconds are elapsed'
complete -c openconnect -l resolve -d 'Automatically resolve the hostname R HOST to R IP instead of using the normal…'
complete -c openconnect -l servercert -d 'Accept server\'s SSL certificate only if the provided fingerprint matches'
complete -c openconnect -l useragent -d 'Use  STRING as \'User-Agent:\' field value in HTTP header.  (e. g'
complete -c openconnect -l version-string -d 'Use  STRING as the software version reported to the head end.  (e. g'
complete -c openconnect -l local-hostname -d 'Use  STRING as \'X-CSTP-Hostname:\' field value in HTTP header'
complete -c openconnect -l os -d 'OS type to report to gateway'

