source /vagrant/params.sh

mkdir /etc/chef
cp /vagrant/x/${org}-validator.pem /etc/chef/validation.pem
cp /vagrant/client.rb /etc/chef/client.rb

rpm -ivh /vagrant/x/chef-1*.rpm

chef-client
