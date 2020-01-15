# dev-setup

## Description

This cookbook is used to setup my dev environment.

It is meant for a first install, not constant provisionning, so some problems
can occur if trying to run multiple times on the same system.

I use Jetbrains IDEs, and their installation is included in the corresponding 
recipes. ex: CLion is installed by `ctools.rb`

This project is built and maintained for my own personnal needs and learning 
experience. You are free to clone it and adapt it for your own needs as long 
as you respect the MIT license agreement.

## Project outline

- [x] Basic tools and code editor
- [x] C related packages and IDE
- [x] Python related packages and IDE
- [x] Basic web related packages and IDE
- [x] Bashrc and Vim customization
- [x] Ubuntu environment customization
- [x] Docker and Docker-compose
- [ ] Androit App related packages and IDE

## How to

### The install script

The script `install.sh` is an all-included setup script. By default, it will 
only install the `basictools` recipe and is to be customized for each dev 
environment by choosing wich recipe to run. It can be downloaded by itself 
and will take care of everything. It runs the Chef recipes as well as 
configuration scripts that need to run as the current user (not sudo or root).

Therefore, you need to run `ìnstall.sh` as is, without sudo privileges and as 
the user you intend to use these tools with.

Inspect the install script and comment/uncomment the required parts for your 
needs(will be converted to arguments eventually).

### The Chef recipes

If you need to setup your own Chef instance before hand, you can use the 
script `chefworkstation-install.sh` before hand.

Once you have created you chef folder and downloaded this cookbook,
you can run the recipes with this command, from the chef folder root:

    sudo chef-client -z -o dev-setup::<recipeName>

    ex.
    sudo chef-client -z -o dev-setup::basictools

The default recipe installs everything.

For the pythontools, dockertools and webtools recipes, additional 
scripts must be run, as somethings need to be installed in userspace and 
Chef runs everything as root. 

## More about Chef

Chef is an open source tool and is a very powerful provisionning and 
configuration management tool. This project barely scratches the surface 
of what it can do.

To learn more about Chef :

- [What is Chef](https://www.chef.sh)
- [Learning Chef](https://learn.chef.io/#/)

