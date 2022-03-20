# Hosts-ad-and-tracking-block

My addition to automatic domain unblocking solution (using tor) and blocking ads on router side (https://habr.com/ru/post/428992)

Made my lists appear online so I can edit them from anywhere using web browser and then all my routers automaticly get them on daily basis using cron.

unblock_pub.txt inculdes domains to be unblocked (routed through tor)

Mobile_tracking.txt includes domains to be blocked

hostslists.txt includes links to raw public lists of ads domains plus my own list Mobile_tracking.txt

unblock_update.sh was adjusted to download public list (unblock_pub.txt), combine it with private list (only stored in router directory opt/etc/unblock_priv.txt to unblock some private domains if I don't want to share their names) and pass it to original unblock_dnsmasq.sh

adblock_update.sh was adjusted to download lists of domains.
