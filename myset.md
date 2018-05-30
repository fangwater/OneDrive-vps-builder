#配置流程
#我自己的机器环境为ubuntu16.04 openvz 开启tun接口
#卸载apche
apt-get --purge remove apache2
apt-get autoremove


#https://www.moerats.com/archives/111/
#bbr
wget --no-check-certificate https://raw.githubusercontent.com/kuoruan/shell-scripts/master/ovz-bbr/ovz-bbr-installer.sh
chmod +x ovz-bbr-installer.sh
./ovz-bbr-installer.sh

#ss
#https://teddysun.com/392.html
wget --no-check-certificate -O shadowsocks-go.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-go.sh
chmod +x shadowsocks-go.sh
./shadowsocks-go.sh 2>&1 | tee shadowsocks-go.log

#安装云盘服务
wget "https://raw.githubusercontent.com/fangwater/OneDrive-vps-builder/master/Aria2.sh"
chmod +x Aria2.sh
bash ./Aria2.sh

#我自己的配置
wget "https://raw.githubusercontent.com/fangwater/OneDrive-vps-builder/master/My.sh"
chmod +x My.sh
bash ./My.sh




