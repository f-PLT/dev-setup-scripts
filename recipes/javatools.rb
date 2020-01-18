# If installing as standalone, consider also running the
# javatools_config.sh script 

package 'default-jdk'
package 'maven'

execute "install IntelliJ via snap store" do
    command "sudo snap install intellij-idea-ultimate --classic"
end