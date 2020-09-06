#!/bin/sh
echo '*'
echo '* Webb tools configuration script - STARTING'
echo '*'
echo 'Installing Java'
sudo apt install -y \
default-jdk \
maven

echo 'Installing intelliJ'
sudo snap install intellij-idea-ultimate --classic

# Fetching and initializing Gradle
wget https://services.gradle.org/distributions/gradle-6.6.1-all.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-6.6.1-all.zip
echo '# Gradle path export' >> ~/.bashrc
echo 'export PATH=$PATH:/opt/gradle/gradle-6.6.1/bin' >> ~/.bashrc
