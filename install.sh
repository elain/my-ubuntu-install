#!/bin/bash
# Info   : install tools for ubuntu
# Author : elain                                                                                                    
# CTime  : 2011.08.01 


#安装压缩类软件
sudo apt-get install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar  --force-yes  -y
#安装 RSS 新闻阅读器
sudo apt-get install akregator liferea  --force-yes  -y
#安装影音工具
sudo apt-get install --force-yes  -y "gnome-MPlayer"
sudo add-apt-repository ppa:nilarimogard/webupd8
#sudo apt-get update
sudo apt-get install audacious -y
#安装系统工具
sudo apt-get install --force-yes  -y yakuake htop lrzsz sysstat expect curl wget nmap nload tree lynx iptraf unetbootin
#安装编程工具
#sudo add-apt-repository ppa:webupd8team/sublime-text-2
#sudo apt-get update
sudo apt-get install ipython sublime-text-3 --force-yes  -y
#安装输入法
sudo apt-get remove ibus -y
sudo apt-get install fcitx fcitx-table-wbpy -y
#和Visio类似的dia（默认只能在命令行启动）
#sudo apt-get install dia  --force-yes  -y
#画UML图的umbrello
#sudo apt-get install umbrello  --force-yes  -y
