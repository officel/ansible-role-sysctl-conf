require 'spec_helper'

describe command('ls /etc/ansible/roles/role_test') do
  its(:exit_status) { should eq 0 }
end

describe file('/etc/sysctl.conf') do
  it { should contain('1').after('net.ipv4.tcp_tw_recycle') }
  it { should contain('1').after('net.ipv4.tcp_tw_reuse') }
  it { should contain('30').after('net.ipv4.tcp_fin_timeout') }
  it { should contain('8192').after('net.core.somaxconn') }
end
