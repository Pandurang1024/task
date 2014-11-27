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

package "rails" do
  version "4.1.0"
  action :install
end