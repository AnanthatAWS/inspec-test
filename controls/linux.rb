include 'rbconfig'
is_windows = RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/
if ! is_windows
  if File.exist?('/var/log/amazon/ssm/amazon_ssm.log')
    puts 'aws log available'
  end
end
