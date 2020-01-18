#!/bin/sh

# User permissions to run docker
sudo usermod -aG docker $USER
sudo chmod +x /usr/local/bin/docker-compose