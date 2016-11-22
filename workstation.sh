source /vagrant/params.sh

rpm -ivh /vagrant/x/chefdk-*.rpm

mkdir ~vagrant/chef-repo

mkdir ~vagrant/chef-repo/.chef
cd ~vagrant/chef-repo/.chef 
cp /vagrant/x/${org}-validator.pem .
cp /vagrant/x/${user}.pem .
cp /vagrant/knife.rb .

mkdir ~vagrant/chef-repo/cookbooks
cd ~vagrant/chef-repo/cookbooks

wget https://supermarket.chef.io/cookbooks/push-jobs/versions/2.2.0/download
tar xzvf download; rm download
wget https://supermarket.chef.io/cookbooks/runit/versions/3.0.0/download
tar xzvf download; rm download
wget https://supermarket.chef.io/cookbooks/windows/download 
tar xzvf download; rm download
wget https://supermarket.chef.io/cookbooks/yum-epel/download
tar xzvf download; rm download
wget https://supermarket.chef.io/cookbooks/packagecloud/download
tar xzvf download; rm download
wget https://supermarket.chef.io/cookbooks/yum/download
tar xzvf download; rm download

find . -name *.lock -exec rm {} \;
chown -R vagrant:vagrant ~vagrant/chef-repo

su - vagrant -c 'cd ~vagrant/chef-repo/cookbooks && knife upload .'

