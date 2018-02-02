require 'rbconfig'
is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
if is_windows
  describe service('DHCP Client') do
    it { should be_installed }
    it { should be_running }
  end
end
