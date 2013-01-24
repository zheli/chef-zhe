#
# Cookbook Name:: op
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# --- install packages ---
package 'ntp'
package 'git'

# --- set host name ---
hostname = 'wobu.co'

#file '/etc/hostname' do 
 #   content "#{hostname}\n"
#end

service 'ntpd' do
    action :restart
end

#file '/etc/hosts' do
#    content "127.0.0.1 localhost #{hostname}\n"
#end