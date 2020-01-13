# Installing  CLion via snap store
execute "install C packages" do
    command "sudo apt-get install libcunit1 libcunit1-dev bats valgrind -y"
end

# Installing  CLion via snap store
execute "install CLion via snap store" do
    command "sudo snap install clion --classic"
end

