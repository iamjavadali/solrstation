#!/bin/bash

#Install JDK-17
apt update
apt install fontconfig openjdk-17-jre
java -version


#Install Jenkins
wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
apt-get update
apt-get install jenkins

#Starting and enabling Jenkins
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

#Display temp password for inital login and save to jenkins_pass.txt file
cat /var/lib/jenkins/secrets/initialAdminPassword > /jenkins_pass.txt
