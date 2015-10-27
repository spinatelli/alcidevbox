sudo apt-key adv --keyserver hkps.pool.sks-keyservers.net --recv D58C6920
sudo sh -c "echo 'deb http://package.crossbar.io/ubuntu trusty main' /etc/apt/sources.list.d/crossbar.list"
curl -sL https://deb.nodesource.com/setup_iojs_3.x | sudo -E bash -
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install -y crossbar python-pip python3-numpy python3 python3-pip git iojs
sudo pip3 install anaconda pandas autobahn ujson asyncio

sudo npm install -g npm@latest
sudo npm install grunt-cli express bower -g
echo 'export PATH=$PATH:/opt/crossbar/bin' > ~/.bashrc
source ~/.bashrc