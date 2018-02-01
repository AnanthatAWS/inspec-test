return unless node['platform_family'] == 'windows'

describe service('DHCP Client') do
  it { should be_installed }
  it { should be_running }
end
