apt_repository 'php' do
    uri 'ppa:ondrej/php'
end

package 'php7.3'
package 'php7.3-xdebug'
package 'php-cgi'
package 'php-sqlite3'

execute "install node" do
    command "curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -"
end

package 'nodejs'

execute "install core-js" do
    command "npm install --save core-js@^3"
end

execute "install Phpstorm via snap store" do
    command "sudo snap install phpstorm --classic"
end

