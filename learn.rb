package 'apache' do 
	package_name 'httpd'
	action :install
end

service 'httpd' do 
	action [:start, :enable]
end
