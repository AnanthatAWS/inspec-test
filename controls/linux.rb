require 'rbconfig'
is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
if ! is_windows
  describe file('/var/log/amazon/ssm/amazon-ssm-agent.log') do
     it { should exist }
  end
end
