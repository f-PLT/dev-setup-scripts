package 'python3'
package 'python3-pip'
package 'pylint3'
package 'idle3'
package 'virtualenv'
package 'python-dev'
package 'libpq-dev'

execute "install pip virtual environment" do
    command "sudo pip3 install virtualenv"
end

execute "install postgre" do
    command "sudo pip install psycopg2"
end

execute "install Pycharm via snap store" do
    command "sudo snap install pycharm-professional --classic"
end

