#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "apache2" do
	action :install
end

service "apache2" do
	action [:enable, :start]
end


### execute commands as below :

execute "rm /etc/welcome.html" do
	only_if do
		File.exist?("/etc/welcome.html")
	end
end



include_recipe "php::default"
