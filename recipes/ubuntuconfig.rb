package 'gnome-tweaks'

execute 'add paper icons to repo' do
    command 'sudo add-apt-repository -u ppa:snwh/ppa'
end

apt_update

execute 'install paper icons' do
    command 'sudo apt-get install paper-icon-theme -y'
end

execute 'clear previous vimix folder' do
    command 'sudo rm -rf ~/vimix'
end

execute 'fetch vimix' do
    command 'git clone https://github.com/vinceliuice/vimix-gtk-themes.git ~/vimix'
end

execute 'install vimix' do
    command '~/vimix/Install'
end

execute 'remove vimix repo' do
    command 'sudo rm -rf ~/vimix'
end

