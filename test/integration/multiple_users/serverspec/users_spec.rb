require 'serverspec'
set :backend, :exec

describe user 'derek' do
  it { should exist }
end

describe group 'derek' do
  it { should exist }
end

describe user 'clive' do
  it { should exist }
end

describe group 'clive' do
  it { should exist }
end

describe file '/etc/sudoers.d/clive' do
  it { should be_file }
  its(:content) { should match /clive ALL=NOPASSWD:ALL/ }
  it { should be_mode 440 }
  it { should be_owned_by 'root' }
end
