#!/bin/sh

curl -o /opt/etc/unblock_pub.txt https://raw.githubusercontent.com/iNIKELIV/Hosts-ad-and-tracking-block/main/lists/unblock_pub.txt
cat /opt/etc/unblock_pub.txt /opt/etc/unblock_priv.txt > /opt/etc/unblock.txt

ipset flush unblock

/opt/bin/unblock_dnsmasq.sh
/opt/etc/init.d/S56dnsmasq restart
/opt/bin/unblock_ipset.sh &
