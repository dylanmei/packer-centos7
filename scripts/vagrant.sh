# Install SSH Keys
install -v -o vagrant -g vagrant -m 0700 -d /home/vagrant/.ssh
curl -o /home/vagrant/.ssh/authorized_keys -kL 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys

# Fix Slow DNS
echo 'RES_OPTIONS="single-request-reopen"' >> /etc/sysconfig/network
service network restart
