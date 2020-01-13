apt_repository 'php' do
    uri 'ppa:ondrej/php'
end

package 'php7.4'
package 'php7.4-xdebug'
package 'php-cgi'
package 'php-sqlite3'

execute "add Yarn public key" do
    command "curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -"
end

execute "add Yarn to package manager" do
    command "echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | sudo tee /etc/apt/sources.list.d/yarn.list"
end

apt_update

execute "install Yarn" do
    command "sudo apt-get install yarn -y"
end

execute "install Phpstorm via snap store" do
    command "sudo snap install phpstorm --classic"
end

execute "install Webstorm via snap store" do
    command "sudo snap install webstorm --classic"
end
