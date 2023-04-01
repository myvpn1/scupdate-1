#!/bin/bash
# Script by : _Dreyannz_
MYIP=$(wget -qO- ipv4.icanhazip.com)
User=trial</dev/urandom tr -dc X-Z0-9 | head -c4
Pass=</dev/urandom tr -dc a-f0-9 | head -c9
Days="1"
Today=date +%s
Days_Detailed=$(( $Days * 86400 ))
Expire_On=$(($Today + $Days_Detailed))
Expiration=$(date -u --date="1970-01-01 $Expire_On sec GMT" +%Y/%m/%d)
Expiration_Display=$(date -u --date="1970-01-01 $Expire_On sec GMT" '+%d %b %Y')
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
stunnel4port="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squidport="$(cat /etc/squid3/squid.conf | grep -i http_port | awk '{print $2}')"
useradd -e date -d "$Days days" +"%Y-%m-%d" -s /bin/false -M $User
echo -e "$PASSWD\n$PASSWD\n"|passwd $LOGIN &> /dev/null
clear
echo -e "\e[94m[][][]=====================================[][][]"
echo -e "\e[0m                                                   "
echo -e "\e[93m           AutoScriptVPS by  _Dreyannz_           "
echo -e "\e[0m                                                   "
echo -e "         Username        :  $LOGIN"
echo -e "         Password        :  $PASSWD"
echo -e "         Expires on      :  $exp"
echo -e "\e[0m                                                   " 
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/geostore/user.log
echo -e "IP               : $IP" | tee -a /etc/geostore/user.log
echo -e "Host             : $domain" | tee -a /etc/geostore/user.log
echo -e "Host Slowdns     : ${NS}" | tee -a /etc/geostore/user.log
echo -e "Pub Key          : ${PUB}" | tee -a /etc/geostore/user.log
echo -e "Port OpenSSH     : 443, 80, 22" | tee -a /etc/geostore/user.log
echo -e "Port DNS         : 443, 53 ,22 " | tee -a /etc/geostore/user.log
echo -e "Port Dropbear    : 443, 109" | tee -a /etc/geostore/user.log
echo -e "Port Dropbear WS : 443, 109" | tee -a /etc/geostore/user.log
echo -e "Port SSH WS      : 80 " | tee -a /etc/geostore/user.log
echo -e "Port SSH SSL WS  : 443" | tee -a /etc/geostore/user.log
echo -e "Port SSL/TLS     : 443" | tee -a /etc/geostore/user.log
echo -e "Port OVPN WS SSL : 443" | tee -a /etc/geostore/user.log
echo -e "Port OVPN SSL    : 443" | tee -a /etc/geostore/user.log
echo -e "Port OVPN TCP    : 443, 1194" | tee -a /etc/geostore/user.log
echo -e "Port OVPN UDP    : 2200" | tee -a /etc/geostore/user.log
echo -e "Proxy Squid      : 3128" | tee -a /etc/geostore/user.log
echo -e "BadVPN UDP       : 7100, 7300, 7300" | tee -a /etc/geostore/user.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/geostore/user.log
echo -e "Payload WSS      : GET wss://BUG.COM/ HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]" | tee -a /etc/geostore/user.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/geostore/user.log
echo -e "OpenVPN WS SSL   : https://$domain:81/"$domain"-ws-ssl.ovpn" | tee -a /etc/geostore/user.log
echo -e "OpenVPN SSL      : https://$domain:81/"$domain"-ssl.ovpn" | tee -a /etc/geostore/user.log
echo -e "OpenVPN TCP      : https://$domain:81/"$domain"-tcp.ovpn" | tee -a /etc/geostore/user.log
echo -e "OpenVPN UDP      : https://$domain:81/"$domain"-udp.ovpn" | tee -a /etc/geostore/user.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/geostore/user.log
echo -e "Save Link Account: https://$domain:81/ssh-$LOGIN.txt"
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/geostore/user.log
echo -e "" | tee -a /etc/geostore/user.log
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu