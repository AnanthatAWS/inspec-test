
if platform?('windows')
  return
end

describe file('/var/log/amazon/ssm/amazon-ssm-agent.log') do
  it { should be_file }
end
