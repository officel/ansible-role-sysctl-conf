require 'spec_helper'

describe command('ls /etc/ansible/roles/role_test') do
  its(:exit_status) { should eq 0 }
end

