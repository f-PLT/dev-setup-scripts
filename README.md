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

The script `install.sh` is an all-included setup script. You can use the 
command `list`, or run the script without arguments to see the available 
configurations.

If only the `install.sh` script has been downloaded, be sure to run the
`setup` command first, as it will fetch the required scripts and files.

```
./install.sh setup
```

It is also possible to use more than one command for a personnalized installation:

```
./install setup basictools python
```

The `all` command will install everything, and the `custom` command to install
a selection of what I mostly use on every new install; basictools, python, 
docker and web libraries, tools and IDEs, as well as personnalize Ubuntu.
