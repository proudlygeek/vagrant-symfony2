include_recipe "nginx"

#
# NGINX config
#
template "#{node.nginx.dir}/sites-available/#{node.app.name}.conf" do
  source "nginx.conf.erb"
  mode 644
  notifies :restart, resources(:service => "nginx")
end

nginx_site "#{node.app.name}.conf"

#
# PHP-FPM config
#
template "/etc/php5/fpm/pool.d/#{node.app.name}.conf" do
  source "php-fpm.conf.erb"
  mode 644
  notifies :restart, resources(:service => "php5-fpm")
end
