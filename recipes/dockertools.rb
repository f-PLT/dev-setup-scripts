package 'apt-transport-https'
package 'ca-certificates'
package 'curl'
package 'gnupg-agent'
package 'software-properties-common'

execute "add docker GPG key" do
    command "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
end

execute "add Docker to package manager" do
    command "sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\""
end

apt_update

package 'docker-ce'
package 'docker-ce-cli'
package 'containerd.io'

execute "add current user to docker group" do
    command "sudo usermod -aG docker $USER"
end

execute "fetch and install docker-compose" do
    command "sudo curl -L \"https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)\" -o /usr/local/bin/docker-compose"
end

execute "change permissions for docker-compose" do
    command "sudo chmod +x /usr/local/bin/docker-compose"
end
