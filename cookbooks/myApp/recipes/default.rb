#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


cookbook_file "/opt/gitcode.sh" do
  source "gitcode.sh"
  mode "0677"
end

bash "gitcode" do
  guard_interpreter :bash
  code "/opt/gitcode.sh"
end



