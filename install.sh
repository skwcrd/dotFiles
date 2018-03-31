#!/bin/bash
################################################################################
# Script for installing on Linux (could be used for other version too)
# Author: SK
#-------------------------------------------------------------------------------
# This script will install on your Linux. It can install multiple instances
# in one Linux because of the different xmlrpc_ports
################################################################################

#update
echo " ===> update"
sudo apt-get update
clear

#install fonts thai
echo " install ===> fonts thai"
sudo apt-get install fonts-thai-tlwg curl
clear

#install bleachbit
echo " install ===> Bleachbit"
sudo apt-get install -y bleachbit
clear

#install etcher
echo " install ===> Etcher"
#Add Etcher debian repository
echo "deb https://dl.bintray.com/resin-io/debian stable etcher" | sudo tee /etc/apt/sources.list.d/etcher.list
#Trust Bintray.com's GPG key
sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61
#Update and install
sudo apt-get update
sudo apt-get install etcher-electron
#Uninstall Etcher
#sudo apt-get remove etcher-electron
#sudo rm -fr /etc/apt/sources.list.d/etcher.list
#sudo apt-get update
clear

#install node js
echo " install ===> NodeJS"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs npm
#install build-essential
sudo apt-get install -y build-essential
clear

#install react js
echo " install === NodeJS ===> ReactJS"
npm install -g create-react-app
clear

#install sublime-text 3
echo " install === EDITOR ===> Sublime-Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
clear

#install visual studio code
echo " install === EDITOR ===> Visual Studio Code"
sudo dpkg -i code_1.21.1-1521038896_amd64.deb
#Install dependencies
sudo apt-get install -f
#The repository and key
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#Then update the package cache and install the package
sudo apt-get update
sudo apt-get install code
clear

echo " install ===> Vim"
sudo apt-get install -y vim
clear

echo " install ===> Git"
sudo apt-get install -y git
cp -rf gitconfig ~/.gitconfig
clear

echo " install ===> Others..."
sudo apt-get install -y default-jdk default-jre gcc g++ golang golang-go libunwind8 gettext apt-transport-https metasploit-framework postgresql
sudo apt-get install -y libevent-dev libopenblas-dev libatlas3gf-base
sudo apt-get install -y python python-numpy python-scipy python-dev python-pip python-nose
sudo apt-get install -y python3 python3-numpy python3-scipy python3-dev python3-pip python3-nose
clear

sudo apt-get install -y python-pypdf2 python-dateutil python-feedparser python-ldap python-libxslt1 python-lxml python-mako python-openid python-psycopg2 python-pybabel python-pychart python-pydot python-pyparsing python-reportlab python-simplejson python-tz python-vatnumber python-vobject python-webdav python-werkzeug python-xlwt python-yaml python-zsi python-docutils python-psutil python-mock python-unittest2 python-jinja2 python-pypdf python-decorator python-requests python-passlib python-pil
sudo pip3 install pypdf2 Babel passlib Werkzeug decorator python-dateutil pyyaml psycopg2 psutil html2text docutils lxml pillow reportlab ninja2 requests gdata XlsxWriter vobject python-openid pyparsing pydot mock mako Jinja2 ebaysdk feedparser xlwt psycogreen suds-jurko pytz pyusb greenlet xlrd

#https://github.com/Theano/Theano
#sudo pip install Theano
#sudo pip3 install Theano

#pip install tensorflow
#pip3 install tensorflow
#pip install tensorflow-gpu
#pip3 install tensorflow-gpu
#URL_CPU = https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.6.0-cp27-none-linux_x86_64.whl
#URL_GPU = https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.6.0-cp27-none-linux_x86_64.whl
#sudo pip  install --upgrade $(URL_... CPU/GPU)
#VERSION = 4,5,6 ? // 3. ... ?
#URL3_CPU = https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.6.0-cp3$( VERSION )-cp3$( VERSION )m-linux_x86_64.whl
#URL3_GPU = https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.6.0-cp3$( VERSION )-cp3$( VERSION )m-linux_x86_64.whl
#sudo pip3 install --upgrade $(URL3_... CPU/GPU)

#pip install -U scikit-learn

cat << 'EOF' >> ~/.bashrc
export EDITOR='vim'
export GOROOT=/usr/lib/go
export GOBIN=/usr/bin/go
EOF


#clean and clear
echo " ===> Clear"
sudo apt-get -y autoremove
sudo apt-get clean
clear
