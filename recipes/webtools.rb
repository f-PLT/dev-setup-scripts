apt_repository 'php' do
    uri 'ppa:ondrej/php'
end

package 'php7.3'
package 'php7.3-xdebug'
package 'php-cgi'
package 'php-sqlite3'

execute "install node via snap store" do
    command "sudo snap install node --classic --channel=8"
end

execute "install core-js" do
    command "npm install --save core-js@^3"
end

execute "install Phpstorm via snap store" do
    command "sudo snap install phpstorm --classic"
end

