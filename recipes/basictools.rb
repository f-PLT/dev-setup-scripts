package 'build-essential'
package 'software-properties-common'
package 'vim'

execute "install Visual Studio Code via snap store" do
    command "sudo snap install code --classic"
end

