directory '/etc/update-motd.d/' do
  owner 'root'
  group 'root'
  action :create
end

if platform?('debian')
  file '/etc/motd' do
    action :delete
  end

  link '/etc/motd' do
    to '/var/run/motd'
  end
end
