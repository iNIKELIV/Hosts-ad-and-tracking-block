#!/bin/sh
 > /opt/etc/adblock.txt
curl https://raw.githubusercontent.com/iNIKELIV/Hosts-ad-and-tracking-block/main/hostslists.txt \
| xargs -n 1 curl >> /opt/etc/adblock.txt
awk  '{sub("\r$", ""); sub("^www\\.", "", $2); if ($0 && $0 !~ /^#/ && $2 && $2 !~ /^$/ && $2 != "localhost") print "server=/." $2 "/";}' /opt/etc/adblock.txt \
| sort -u > /opt/etc/adblock.dnsmasq

if [ ! -e "/opt/etc/init.d/S56dnsmasq" ]; then
  restart_dhcpd
else
  /opt/etc/init.d/S56dnsmasq restart
fi