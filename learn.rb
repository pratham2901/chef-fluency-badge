package 'apache' do 
	package_name 'httpd'
	action :install
end

service 'httpd' do 
	action [:start, :enable]
end

file '/var/www/html/index.html' do 
	content 'Hello World'
	mode '0755'
	owner 'root'
	group 'apache'
end

file '/etc/motd' do
	content 'Welcome '

end

execute 'comma-test' do
	command 'echo Prathamesh >> /etc/motd'
	only_if 'test -r /etc/motd'
end
