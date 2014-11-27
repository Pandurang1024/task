#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


#package "rails" do
#  version "4.1.0"
#  action :install
#end

package "rails" do
  action :install
end


directory "/var/chef/prime_factors_kata/tmp" do
 owner 'root'
 group 'root'
 mode '0755'
 action :create
end

%w[ /var/chef/prime_factors_kata/db /var/chef/prime_factors_kata/db/migrate /var/chef/prime_factors_kata/tmp /var/chef/prime_factors_kata/log /var/chef/prime_factors_kata/Gemfile.lock ].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode '0777'
  end
end


%w[ /var/chef/prime_factors_kata/db/seeds.rb /var/chef/prime_factors_kata/db/schema.rb ].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode '0777'
  end
end



#Star pimefact rail server
cookbook_file "/var/chef/prime_factors_kata/db/development.sqlite3" do
  source "development.sqlite3"
  mode "0677"
end


#Star pimefact rail server

package "ruby-railties" do
  action :install
end

package "libsqlite3-dev" do
  action :install
end

execute 'updatesqlite' do
  cwd '/var/chef/prime_factors_kata'
  command 'bundle update sqlite3'
end

execute 'updatedb' do
  cwd '/var/chef/prime_factors_kata'
  command 'rake db:migrate'
end

execute 'startRailServer' do
  cwd '/var/chef/prime_factors_kata'
  command 'rails s -d'
end