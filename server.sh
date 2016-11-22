source /vagrant/params.sh

mkdir /etc/opscode
cp /vagrant/chef-server.rb /etc/opscode/chef-server.rb

cp /vagrant/x/chef-server.pem /etc/pki/tls/private/chef-server.pem
cp /vagrant/x/chef-server.key /etc/pki/tls/private/chef-server.key

rpm -ivh /vagrant/x/chef-server-core-*.rpm
chef-server-ctl reconfigure
chef-server-ctl user-create $user $userfirstname $userlastname $useremail "$userpassword" --filename /vagrant/x/${user}.pem
chef-server-ctl org-create $org "$orgname" --association_user $user --filename /vagrant/x/${org}-validator.pem

chef-server-ctl install chef-manage --path /vagrant/x/chef-manage-*.rpm
chef-server-ctl reconfigure
chef-manage-ctl reconfigure --accept-license

chef-server-ctl install opscode-push-jobs-server --path /vagrant/x/opscode-push-jobs-server-*.rpm
chef-server-ctl reconfigure
opscode-push-jobs-server-ctl reconfigure

chef-server-ctl install opscode-reporting --path /vagrant/x/opscode-reporting-*.rpm
chef-server-ctl reconfigure
opscode-reporting-ctl reconfigure --accept-license

