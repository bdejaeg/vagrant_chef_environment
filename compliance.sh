source /vagrant/params.sh

rpm -ivh /vagrant/x/chef-compliance-*.rpm

chef-compliance-ctl reconfigure --accept-license
chef-compliance-ctl restart

