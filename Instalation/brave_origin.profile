# Firejail profile for brave
include brave.local
include globals.local
#-------------------------------------------
#ESTO VIENE DE LA FIRETOOLS

# file system
include /etc/firejail/disable-common.inc
#----------
private ~/.sandboxBraveOrigin
private-tmp


private-dev


private-cache
private-etc brave

noexec /tmp

blacklist /media
blacklist /mnt
blacklist /run/media
blacklist /proc/mounts
#---------------
blacklist /usr/bin/python3
blacklist /usr/bin/whoami 
blacklist /usr/bin/gcc
blacklist /usr/bin/su
blacklist /usr/bin/sudo
blacklist /usr/bin/ssh
blacklist /usr/bin/wget
blacklist /usr/bin/curl
blacklist /boot
blacklist /lost+found
blacklist /root
blacklist /sbin
blacklist /srv
blacklist /sys
blacklist /var


#-------------------
# Sistema de archivos
read-only /etc
read-only /usr
read-only /bin
read-only /lib
read-only /lib64
read-only /sbin

dns 9.9.9.9
dns 149.112.112.112
protocol unix,inet,
netfilter
nogroups
nonewprivs
noroot



#nosound
nodvd
novideo
notv

# Recursos
caps.drop all
rlimit-nofile 4096
rlimit-fsize 104857600
#-------------------------------------------



# Brave sandbox needs read access to /proc/config.gz
noblacklist /proc/config.gz

# Redirect
