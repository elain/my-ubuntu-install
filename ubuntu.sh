#!/bin/bash
# Info   : install tools for ubuntu
# Author : elain                                                                                                    
# CTime  : 2011.08.01 

#-------------------------------------------
#---------     删除一些没用的软件       ------------
#--------------------------------------force-yes  -y-------
sudo apt-get remove totem totem-gstreamer totem-mozilla --force-yes  -y
sudo apt-get remove rhythmbox bittorrent empathy --force-yes  -y

#安装vim代替vi并配置
sudo apt-get install vim --force-yes  -y 
echo "alias vi=vim " >> ~/.bashrc
source ~/.bashrc
sudo /bin/cp /etc/vim/vimrc .
sudo echo '''
syntax on
set tabstop=4
set nu
set shiftwidth=4
set t_Co=256
colorscheme elain
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set paste

"python
set filetype=python
au BufNewFile,BufRead *.py,*.pyw,*.pyc setf python
set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
autocmd FileType python set omnifunc=pythoncomplete#Complete
''' >>./vimrc

sudo /bin/cp ./vimrc /etc/vim/vimrc
cd /usr/share/vim/vim73/colors/
sudo wget http://ebook.elain.org/tools/vim/elain.vim

#添加163源
sudo sed -i 's/cn.archive.ubuntu/mirrors.163/g' /etc/apt/sources.list
sudo apt-get update

#安装压缩类软件
sudo apt-get install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar  --force-yes  -y
#安装 RSS 新闻阅读器
sudo apt-get install akregator liferea  --force-yes  -y
#安装互联网常用工具
sudo apt-get install filezilla amsn emesene thunderbird iptux --force-yes  -y
#安装飞信
sudo apt-add-repository ppa:happyaron/ppa
sudo apt-get update
sudo apt-get install --force-yes  -y openfetion
#安装影音工具
sudo apt-get install --force-yes  -y "gnome-MPlayer"
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install audacious -y
#安装系统工具
sudo apt-get install --force-yes  -y yakuake htop lrzsz sysstat curl wget nmap nload tree lynx iptraf unetbootin
#安装编程工具
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install ipython sublime-text-2-dev --force-yes  zim -y
#安装ubuntu-tweak
sudo add-apt-repository ppa:tualatrix/ppa
sudo apt-get update
sudo apt-get install ubuntu-tweak --force-yes  -y
#阅读CHM文件，chmsee对某些不规范的chm文件支持效好， gnochm支持搜索
sudo apt-get install chmsee gnochm xchm  --force-yes  -y
#安装思维脑图
sudo apt-get install freemind --force-yes -y
#安装屏保
sudo apt-get remove gnome-screensaver --force-yes -y
sudo apt-get install xscreensave* --force-yes -y
#安装输入法
sudo apt-get remove ibus -y
sudo apt-get install fcitx fcitx-table-wbpy -y
#和Visio类似的dia（默认只能在命令行启动）
#sudo apt-get install dia  --force-yes  -y
#画UML图的umbrello
#sudo apt-get install umbrello  --force-yes  -y

#安装gnome3
#sudo add-apt-repository ppa:gnome3-team/gnome3
#sudo apt-get update
#sudo apt-get dist-upgrade
#sudo apt-get install --force-yes  -y gnome-shell

#安装其它
echo '''
==========================温馨提示============================
软件包已安装成功！
更多软件请访问：
http://ebook.elain.org/tools/ubuntu
下载手动安装！！！
安装方法：
sudo dpkg -i xxx.deb
批量下载:
sudo wget http://ebook.elain.org/tools/ubuntu/download.sh
sudo sh download.sh
==============================================================
'''

