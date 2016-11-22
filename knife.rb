# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

File.readlines("/vagrant/params.sh").each do |line|
  values = line.chomp.split("=")
  ENV[values[0]] = values[1]
end

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "#{ENV['user']}"
client_key               "#{current_dir}/#{ENV['user']}.pem"
chef_server_url          "https://server.chef/organizations/#{ENV['org']}"
cookbook_path            ["#{current_dir}/../cookbooks"]
ssl_verify_mode :verify_none

