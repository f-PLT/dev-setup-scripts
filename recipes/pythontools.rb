# If installing as standalone, consider also running the
# pythontools_config.sh script 

package 'python3'
package 'python3-pip'
package 'pylint3'
package 'idle3'
package 'virtualenv'
package 'python-dev'
package 'libpq-dev'

execute "install Pycharm via snap store" do
    command "sudo snap install pycharm-professional --classic"
end
