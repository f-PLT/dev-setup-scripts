echo '*'
echo '* Basictools configuration script - STARTING'
echo '*'
echo 'Installing packages'
sudo apt install -y \
build-essential \
software-properties-common \
terminator \
vim

echo 'Installing VS Code'
sudo snap install code --classic

echo '*'
echo '* Basictools configuration script - Done'
echo '*'