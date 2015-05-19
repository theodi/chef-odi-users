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
