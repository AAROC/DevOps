#!/bin/sh
iptables -F
iptables -t filter -A INPUT -p all -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -t filter -A INPUT -p all -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -t filter -A INPUT -p icmp -j ACCEPT
iptables -t filter -A INPUT -p tcp -m state --state NEW --dport 22 -j ACCEPT
iptables -t filter -A INPUT -p all -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -t filter -A INPUT -p all -j REJECT --reject-with icmp-admin-prohibited
iptables -t filter -A FORWARD -p all -j REJECT --reject-with icmp-admin-prohibited

mkdir iptables
iptables-save > /etc/iptables/rules
