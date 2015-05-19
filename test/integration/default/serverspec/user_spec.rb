require 'serverspec'
set :backend, :exec

describe user 'taylorswift' do
  it { should exist }
end

describe group 'taylorswift' do
  it { should exist }
end

describe file '/etc/sudoers.d/taylorswift' do
  it { should be_file }
  its(:content) { should match /taylorswift ALL=NOPASSWD:ALL/ }
  it { should be_mode 440 }
  it { should be_owned_by 'root' }
end
