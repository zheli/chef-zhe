#
# Cookbook Name:: python_env
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'python'

#install virtualenvwrapper
python_pip "virtualenvwrapper"

#create virtualenv directory
directory "/home/zhe/Envs" do
  owner  'zhe'
  group  'zhe'
  action :create
end

#update .bashrc file
cookbook_file "/home/zhe/.bashrc" do
  source 'bashrc'
  owner 'zhe'
  group 'zhe'
end
