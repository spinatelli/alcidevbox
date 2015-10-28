sudo apt-key adv --keyserver hkps.pool.sks-keyservers.net --recv D58C6920
sudo add-apt-repository ppa:webupd8team/java -y
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo sh -c "echo 'deb http://package.crossbar.io/ubuntu trusty main' > /etc/apt/sources.list.d/crossbar.list"
curl -sL https://deb.nodesource.com/setup_iojs_3.x | sudo -E bash -
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
sudo apt-get install -y crossbar python-pip python3-numpy python3 python3-pip git iojs oracle-java8-installer
sudo pip3 install pandas autobahn ujson asyncio

sudo npm install -g npm@latest
sudo npm install grunt-cli express bower -g
echo 'export PATH=$PATH:/opt/crossbar/bin' > /home/vagrant/.bashrc
source /home/vagrant/.bashrc

curl -L -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.3.deb
sudo dpkg -i elasticsearch-1.7.3.deb
sudo update-rc.d elasticsearch defaults 95 10
sudo /etc/init.d/elasticsearch start

touch /home/vagrant/run_me.sh
mkdir /home/vagrant/tmp
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
echo "cd Columba" >> /home/vagrant/run_me.sh
echo "mv frontend/package.json ." >> /home/vagrant/run_me.sh
echo "npm install" >> /home/vagrant/run_me.sh
echo "curl -XPUT 'localhost:9200/device?pretty'" >> /home/vagrant/run_me.sh
sudo chmod +x /home/vagrant/run_me.sh
sudo chown vagrant:vagrant /home/vagrant/tmp -R
sudo chown vagrant:vagrant /home/vagrant/run_me.sh