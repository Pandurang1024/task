#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


git "/var/chef/code" do                            
    repository "git@github.com:Pandurang1024/sysconfig.git"
    revision "master"                                 
    #checkout_branch 'development'
    action :sync                                     
    user "root"                                                                  
end

