File.readlines("/vagrant/params.sh").each do |line|
  values = line.chomp.split("=")
  ENV[values[0]] = values[1]
end

chef_server_url "https://server.chef/organizations/#{ENV['org']}"
validation_client_name "#{ENV['org']}-validator"
ssl_verify_mode :verify_none
