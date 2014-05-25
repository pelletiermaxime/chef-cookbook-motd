directory '/etc/update-motd.d/' do
  owner 'root'
  group 'root'
  action :create
end

file "/etc/motd" do
  action :delete
  #only_if "! test -L /etc/motd" #Delete only if not a symlink
end

link "/etc/motd" do
  to "/var/run/motd"
end
