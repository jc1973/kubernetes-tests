#Operating System Check
describe os[:family] do
  it { should eq 'redhat' }
end

# SystemD Service Check
describe service('auditd') do
  it { should be_enabled }
  it { should be_running }
end
describe service('chronyd') do
  it { should be_enabled }
  it { should be_running }
end
describe service('crond') do
  it { should be_enabled }
  it { should be_running }
end
describe service('dbus') do
  it { should be_enabled }
  it { should be_running }
end
describe service('docker') do
  it { should be_enabled }
  it { should be_running }
end
describe service('getty@tty1') do
  it { should be_enabled }
  it { should be_running }
end
describe service('irqbalance') do
  it { should be_enabled }
  it { should be_running }
end
describe service('NetworkManager') do
  it { should be_enabled }
  it { should be_running }
end
describe service('polkit') do
  it { should be_enabled }
  it { should be_running }
end
describe service('rsyslog') do
  it { should be_enabled }
  it { should be_running }
end
describe service('sshd') do
  it { should be_enabled }
  it { should be_running }
end
describe service('systemd-journald') do
  it { should be_enabled }
  it { should be_running }
end
describe service('systemd-logind') do
  it { should be_enabled }
  it { should be_running }
end
describe service('systemd-udevd') do
  it { should be_enabled }
  it { should be_running }
end
describe service('tuned') do
  it { should be_enabled }
  it { should be_running }
end
describe mount('/') do
  it { should be_mounted }
  its('type') { should eq  'xfs' }
end
describe mount('/mnt/ephemeral') do
  it { should be_mounted }
  its('type') { should eq 'ext4'}
end
describe mount('/mnt/docker') do
  it { should be_mounted }
  its('type') { should eq 'btrfs'}
end

