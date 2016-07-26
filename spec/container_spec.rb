require 'spec_helper'

describe command('ls /etc/ansible/roles/role_test') do
  its(:exit_status) { should eq 0 }
end

describe command('sysctl -e -n net.ipv4.tcp_tw_recycle') do
  # can not check docker on TravisCI...
  # its(:stdout) { should contain('1') }
end
