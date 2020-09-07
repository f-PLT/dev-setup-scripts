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
- [x] Java with Maven and Gradle
- [ ] Androit App related packages and IDE

## How to

### The install script

The script `install.sh` is an all-included setup script. By default, it will 
only install the `basictools` script. You can use the command `list` to see 
the available configurations:

```
$ ./install.sh list
```
The `all` command will install everything, and the `custom` command to install
a selection of what I mostly use on every new install.




