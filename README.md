ReadMe
==========

Download the repo, then

```bash
cd alcidevbox
vagrant up
vagrant ssh
```

From inside the VM

```bash
mkdir ~/tmp
git clone <repo URL> tmp/Columba
sudo chown vagrant ./Columba -R
sudo chmod 775 ./Columba -R
cp tmp/Columba/* Columba/ -R
cp tmp/Columba/.gitignore Columba
cp tmp/Columba/.gitattributes Columba
sudo cp tmp/Columba/.git Columba/ -R
```

Guest port 8080 is forwarded to 8080.
Guest port 3000 is forwarded to 9090.