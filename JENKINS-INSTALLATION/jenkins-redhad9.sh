#!/bin/bash
sudo timedatectl set-timezone America/New_york
sudo hostnamectl set-hostname jenkins
sudo yum install wget tree vim git nano unzip -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install java-17-openjdk
sudo yum install jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
echo "echo of jenkins installation"
sudo su - ec2-user
