require 'spec_helper'

describe command('ls /etc/ansible/roles/role_test') do
  its(:exit_status) { should eq 0 }
end

describe command('sysctl -en net.ipv4.tcp_tw_recycle') do
  its(:stdout) { should contain('1') }
end
