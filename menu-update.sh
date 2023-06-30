#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
clear
BURIQ () {
    curl -sS https://raw.githubusercontent.com/kuhing/ip/main/vps > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}
clear
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/kuhing/ip/main/vps | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}
clear
PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/kuhing/ip/main/vps | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
clear
red='\e[1;31m'
green='\e[1;32m'
yellow='\033[0;33m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
clear
echo ""
rm -rf menu-theme
rm -rf menu-update
rm -rf menu
rm -rf m-bot
rm -rf m-ip
rm -rf menu-vmess
rm -rf menu-uuid
rm -rf menu-vless
rm -rf menu-ssws
rm -rf running
rm -rf clearcache
rm -rf menu-trgo
rm -rf menu-trojan
rm -rf menu-ssh
rm -rf menu-set
rm -rf menu-domain
rm -rf add-host
rm -rf port-change
rm -rf certv2ray
rm -rf menu-webmin
rm -rf speedtest
rm -rf about
rm -rf auto-reboot
rm -rf restart
rm -rf bw
rm -rf port-ssl
rm -rf port-ovpn
rm -rf xp
rm -rf status
rm -rf menu-backup
rm -rf backup
rm -rf restore
rm -rf jam
rm -rf addtrgo
rm -rf trialtrojango
rm -rf deltrgo
rm -rf renewtrgo
rm -rf cektrgo
rm -rf m-sshovpn
rm -rf cf
rm -rf menu-bckp
rm -rf add-gb

cd /usr/bin
wget -O menu-theme "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-theme.sh"
clear
wget -O menu-update "https://raw.githubusercontent.com/jambanbkn/menu-update.sh/menu-update.sh/menu-update.sh"
clear
wget -O menu "https://raw.githubusercontent.com/kuhing/menu.sh/menu.sh/menu.sh"
clear
wget -O m-bot "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/m-bot.sh"
clear
wget -O m-ip "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/m-ip.sh"
clear
wget -O menu-uuid "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-uuid.sh"
clear
wget -O menu-vmess "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-vmess.sh"
clear
wget -O menu-vless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-vless.sh"
clear
wget -O menu-ssws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-ssws.sh"
clear
wget -O running "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/running.sh"
clear
wget -O clearcache "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/clearcache.sh"
clear
wget -O menu-trgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trgo.sh"
clear
wget -O menu-trojan "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trojan.sh"
clear
wget -O menu-ssh "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-ssh.sh"
clear
wget -O menu-set "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-set.sh"
clear
wget -O menu-domain "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-domain.sh"
clear
wget -O add-host "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/add-host.sh"
clear
wget -O port-change "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-change.sh"
clear
wget -O certv2ray "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/certv2ray.sh"
clear
wget -O menu-webmin "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-webmin.sh"
clear
wget -O speedtest "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/speedtest_cli.py"
clear
wget -O about "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/about.sh"
clear
wget -O auto-reboot "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/auto-reboot.sh"
clear
wget -O restart "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/restart.sh"
clear
wget -O bw "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/bw.sh"
clear
wget -O port-ssl "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-ssl.sh"
clear
wget -O port-ovpn "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-ovpn.sh"
clear
wget -O xp "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/xp.sh"
clear
wget -O status "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/status.sh"
clear
wget -O menu-backup "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-backup.sh"
clear
wget -O backup "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/backup/backup.sh"
clear
wget -O restore "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/backup/restore.sh"
clear
wget -O jam "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/jam.sh"
clear
wget -O addtrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/addtrgo.sh"
clear
wget -O trialtrojango "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialtrojango.sh"
clear
wget -O deltrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/deltrgo.sh"
clear
wget -O renewtrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/renewtrgo.sh"
clear
wget -O cektrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/cektrgo.sh"
clear
wget -O cf "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/cf.sh"
clear
wget -O menu-bckp "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-bckp.sh"
clear
wget -O add-gb "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/add-gb.sh"
clear

chmod +x menu-update
chmod +x m-ip
chmod +x menu
chmod +x m-bot
chmod +x menu-uuid
chmod +x menu-vmess
chmod +x menu-vless
chmod +x menu-ssws
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan
chmod +x menu-ssh
chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x port-change
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restart
chmod +x bw
chmod +x port-ssl
chmod +x port-ovpn
chmod +x xp
chmod +x status
chmod +x menu-backup
chmod +x backup
chmod +x restore
chmod +x jam
chmod +x addtrgo
chmod +x trialtrojango
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x cf
chmod +x menu-theme
chmod +x add-gb

clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl sS https://raw.githubusercontent.com/Tarap-Kuhing/v/main/versi )
sleep 1
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
clear
cd
menu
