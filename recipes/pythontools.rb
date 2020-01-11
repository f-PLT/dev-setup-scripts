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

execute "install pip flask" do
    command "sudo pip3 install flask"
end

execute "install pip pytest" do
    command "sudo pip3 install pytest"
end

execute "fetch miniconda" do
    command "wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh"
end

execute "install miniconda" do
    command "bash ~/miniconda.sh -b -p"
end

execute "remove miniconda install files" do
    command "rm ~/miniconda.sh"
end

execute "install postgre dependencies for peewee" do
    command "sudo pip install psycopg2"
end

execute "install Pycharm via snap store" do
    command "sudo snap install pycharm-professional --classic"
end

