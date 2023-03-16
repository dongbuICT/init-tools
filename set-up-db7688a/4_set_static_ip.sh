#!/bin/sh

uci set network.wan.proto='static'
uci set network.wan.ipaddr='192.168.1.11'
uci set network.wan.gateway='192.168.1.1'
uci set network.wan.netmask='255.255.255.0'
uci set network.wan.dns='168.126.63.1'
uci commit
/etc/init.d/network restart

echo "Complete in a moment... >>> SET PASSWORD with 'passwd'"
