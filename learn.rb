package 'apache' do 
	package_name 'httpd'
	action :install
end

service 'httpd' do 
	action [:start, :enable]
end

file '/var/www/html' do 
	content 'Hello World'
	mode '0755'
	owner 'root'
	group 'apache'
end

