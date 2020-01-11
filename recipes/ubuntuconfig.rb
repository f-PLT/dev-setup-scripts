package 'gnome-tweaks'

apt_repository 'paper icons' do
    uri 'ppa:snwh/ppa'
end

execute 'install paper icons' do
    command 'sudo apt update && sudo apt install paper-icon-theme'
end

execute 'set animations off' do
    command 'gsettings set org.gnome.desktop.interface enable-animations false'
end

