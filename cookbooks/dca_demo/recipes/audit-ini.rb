#
# Cookbook:: dca_demo
# Recipe:: default
#
# Copyright:: 2017, Nick Rycar, All Rights Reserved.

# Include baseline audits from the dca_audit_baseline cookbook
# The cookbook contains per-OS triggers so that the appropriate
# windows or linux audits will be applied based on the node scanned.

node.default['audit']['profiles'] = [
        {
        name: 'Linux Baseline',
        compliance: 'leela/linux_baseline_wrapper',
        },
        {
          name: 'Check for foo=bar',
          compliance: 'workstation-1/ini',
        },
]

include_recipe 'dca_audit_baseline::default'
