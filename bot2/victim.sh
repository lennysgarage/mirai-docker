#!/bin/bash

# Install packages
apt-get install -y tmux
apt-get install -y wget

# set root password
passwd root << EOF
root
root
EOF

# enable remote root shell
cat >> /etc/securetty << EOF
pts/0
pts/1
pts/2
pts/3
pts/4
pts/5
pts/6
pts/7
pts/8
pts/9
EOF

# mirai likes busybox telnetd
cd /root
touch .hushlogin
wget --no-check-certificate https://www.busybox.net/downloads/binaries/1.26.2-i686/busybox 
chmod +x busybox
cp busybox /bin
