sudo apt-key adv --keyserver hkps.pool.sks-keyservers.net --recv D58C6920
sudo sh -c "echo 'deb http://package.crossbar.io/ubuntu trusty main' > /etc/apt/sources.list.d/crossbar.list"
curl -sL https://deb.nodesource.com/setup_iojs_3.x | sudo -E bash -
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install -y crossbar python-pip python3-numpy python3 python3-pip git iojs
sudo pip3 install anaconda pandas autobahn ujson asyncio

sudo npm install -g npm@latest
sudo npm install grunt-cli express bower -g
echo 'export PATH=$PATH:/opt/crossbar/bin' > /home/vagrant/.bashrc
source /home/vagrant/.bashrc
touch /home/vagrant/run_me.sh
echo "mkdir /home/vagrant/tmp" >> /home/vagrant/run_me.sh
echo "git clone https://github.com/DataReply/Columba.git tmp/Columba" >> /home/vagrant/run_me.sh
echo "cd tmp/Columba" >> /home/vagrant/run_me.sh
echo "git checkout devbox" >> /home/vagrant/run_me.sh
echo "cd /home/vagrant" >> /home/vagrant/run_me.sh
echo "sudo chown vagrant ./Columba -R" >> /home/vagrant/run_me.sh
echo "sudo chmod 775 ./Columba -R" >> /home/vagrant/run_me.sh
echo "cp tmp/Columba/* Columba/ -R" >> /home/vagrant/run_me.sh
echo "cp tmp/Columba/.gitignore Columba" >> /home/vagrant/run_me.sh
echo "cp tmp/Columba/.gitattributes Columba" >> /home/vagrant/run_me.sh
echo "cp tmp/Columba/.git Columba/ -R" >> /home/vagrant/run_me.sh
echo "cd Columba/frontend" >> /home/vagrant/run_me.sh
echo "npm install" >> /home/vagrant/run_me.sh
sudo chmod +x /home/vagrant/run_me.sh
sudo chown vagrant:vagrant /home/vagrant/tmp
sudo chown vagrant:vagrant /home/vagrant/run_me.sh