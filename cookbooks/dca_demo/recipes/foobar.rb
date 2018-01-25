#
# Cookbook:: my_ini
# Recipe:: foobar
#
# Copyright:: 2017, The Authors, All Rights Reserved

template '/opt/foo.ini' do
    source 'foobar.erb'
    owner 'ubuntu'
    group 'ubuntu'
    mode '0755'
  end