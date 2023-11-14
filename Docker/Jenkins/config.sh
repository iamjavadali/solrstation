#!/bin/bash

#Install JDK-17
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version


#Install Jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

#Starting and enabling Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

#Display temp password for inital login and save to jenkins_pass.txt file
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > /jenkins_pass.txt
