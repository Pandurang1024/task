#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#rvm get stable --autolibs=enable
#rvm install ruby
#rvm --default use ruby-2.1.5

#execute 'rvmkey' do
#  cwd '/opt'
#  command 'gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3'
#end


#execute 'rvmInstall' do
#cwd '/opt'
#command '\curl -sSL https://get.rvm.io | bash -s stable --ruby'
#end

#cookbook_file "/opt/rvmgems.sh" do
#  source "rvmgems.sh"
#  mode "0677"
#end

#bash "rvmgems" do
#  guard_interpreter :bash
#  code "/opt/rvmgems.sh"
#end
