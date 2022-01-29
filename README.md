# dev-setup

## Description

I use these scripts to setup my dev environment.

It is meant for a first install, not constant provisionning, so some problems
can occur if trying to run multiple times on the same system.

This project is built and maintained for my own personnal needs and learning 
experience. You are free to clone it and adapt-get it for your own needs.

## Project outline

- [x] Basic tools and code editor
- [x] C related packages and IDE
- [x] Python related packages and IDE
- [x] Basic web related packages and IDE
- [x] Bashrc and Vim customization
- [x] Ubuntu environment customization
- [x] Docker and Docker-compose
- [x] Java with Maven and Gradle
- [ ] Android App related packages and IDE

## How to

### **** WARNING *****

`vimconf` and `bashconf` overwrite `.vimrc` and `.bashrc` files respectively.

*** DO NOT run them if you have already modified those files. ***

`bashconf` should be run before `python` and `web` as they both append to
`bashrc`. 

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
