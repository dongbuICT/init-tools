#!/bin/sh

uci set firewall.@zone[1].input='ACCEPT'
uci set firewall.@zone[1].output='ACCEPT'
uci set network.lan.proto='dhcp'
uci set network.lan.ipaddr='192.168.61.1'
uci set system.@system[0].timezone='KST-9'
uci commit
/etc/init.d/system restart
/etc/init.d/network restart