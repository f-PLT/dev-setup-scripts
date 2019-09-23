# Adding to repositories
apt_repository 'bats' do
    uri 'ppa:duggan/bats'
end

# Installing packages
package libcunit
package libcunit1-doc
package libcunit
package bats
package valgrind

# Installing  CLion via snap store
execute "install CLion via snap store" do
    command "sudo snap install clion --classic"
end

