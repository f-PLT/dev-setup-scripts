apt_repository 'php' do
    uri 'ppa:ondrej/php'
end

package 'php7.3'
package 'php7.3-xdebug'
package 'php-cgi'
package 'php-sqlite3'

execute "add Node v10 LTS to package manager" do
    command "curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -"
end

package 'nodejs'

execute "add Yarn public key" do
    command "curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -"
end

execute "add Yarn to package manager" do
    command "echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | sudo tee /etc/apt/sources.list.d/yarn.list"
end

execute "install Yarn" do
    command "sudo apt-get update && sudo apt-get install yarn"
end

execute "install angular/cli" do
    command "sudo npm install -g @angular/cli"
end

execute "install core-js" do
    command "npm install --save core-js@^3"
end

execute "install Phpstorm via snap store" do
    command "sudo snap install phpstorm --classic"
end

