require 'spec_helper'

describe command('ls /etc/ansible/roles/role_test') do
  its(:exit_status) { should eq 0 }
end

describe command('/bin/cat /etc/sysctrl.conf') do
  its(:stdout) { should contain('8192').after('net.core.somaxconn') }
end
