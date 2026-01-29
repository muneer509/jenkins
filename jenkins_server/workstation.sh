#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

sudo curl -L https://pkg.jenkins.io/redhat/jenkins.repo -o /etc/yum.repos.d/jenkins.repo && \
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key && \
sudo yum install fontconfig java-17-openjdk && \
sudo yum install jenkins && \
sudo systemctl daemon-reload && \





