# install ruby with rbenv, java, npm, git, mysql-server and set up db.
node.default['rbenv']['rubies'] = ['2.2.3']
include_recipe 'ruby_build'
include_recipe 'ruby_rbenv::system'
include_recipe 'nodejs::npm'
package 'java-1.7.0-openjdk'
package 'git'
rbenv_global '2.2.3'
rbenv_gem 'bundle'

mysql_service 'default' do
  port '3306'
  version '5.6'
  initial_root_password 'changeme'
  action [:create, :start]
end

execute 'add test db info' do
  command "sleep 5s; /usr/bin/mysql -h 127.0.0.1 -uroot -pchangeme -e \"CREATE DATABASE IF NOT EXISTS next; GRANT ALL ON next.* to 'next' identified by 'tsktsk';\""
end

# actual casa service block
ucnext 'default' do
  revision 'master'
  es_host 'elasticsearch' # /etc/hosts from linked docker container!
  secret '0d7e46be6a8fd3a1e4cc3b11d8a09a03d7c948f3dc772119cce2'
  deploy_path '/var/next'
  bundler_path '/usr/local/rbenv/shims'
end
