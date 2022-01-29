#!/bin/bash
echo '*'
echo '* Webb tools configuration script - STARTING'
echo '*'
echo 'Installing Java'

sudo apt-get install -y \
default-jdk \
maven

# Fetching and initializing Gradle
gradle --version
if [ $? == "0" ]
    then
        VERSION=7.3.3
        wget https://services.gradle.org/distributions/gradle-${VERSION}-all.zip
        sudo mkdir /opt/gradle
        sudo unzip -d /opt/gradle gradle-${VERSION}-all.zip
        GRADLE_EXPORT="export PATH=\$PATH:/opt/gradle/gradle-${VERSION}/bin"
        echo '# Gradle path export' >> ~/.bashrc
        echo $GRADLE_EXPORT >> ~/.bashrc
fi

echo '*'
echo '* Webb tools configuration script - DONE'
echo '*'