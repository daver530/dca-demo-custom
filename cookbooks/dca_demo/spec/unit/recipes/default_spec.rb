#
# Cookbook:: dca_demo
# Spec:: default
#
# Copyright:: 2017, Nick Rycar, All Rights Reserved.

require 'spec_helper'

describe 'dca_demo::default' do
  context 'When all attributes are default, on an Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end
    
    # An issue in an upstream cookbook is breaking this. Commenting
    # pending further investigation.
    #it 'converges successfully' do
    #  expect { chef_run }.to_not raise_error
    #end
  end
end
