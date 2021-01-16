#!/bin/sh
echo '*'
echo '* Webb tools configuration script - STARTING'
echo '*'
echo 'Installing Java'
sudo apt install -y \
default-jdk \
maven

# Fetching and initializing Gradle
gradle --version
if [ $? == "0" ]
    then
        wget https://services.gradle.org/distributions/gradle-6.7.1-all.zip
        sudo mkdir /opt/gradle
        sudo unzip -d /opt/gradle gradle-6.7.1-all.zip
        echo '# Gradle path export' >> ~/.bashrc
        echo 'export PATH=$PATH:/opt/gradle/gradle-6.7.1/bin' >> ~/.bashrc
fi

echo '*'
echo '* Webb tools configuration script - DONE'
echo '*'