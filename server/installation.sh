
#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# ARCH=amd64
# PLATFORM=$(uname -s)_$ARCH

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi
sudo dnf install -y fontconfig java-17-openjdk && \

sudo curl -fsSL https://pkg.jenkins.io/redhat-stable/jenkins.repo \
    -o /etc/yum.repos.d/jenkins.repo && \
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key && \


sudo dnf install -y jenkins && \
VALIDATE $? "jenkins installation"
sudo systemctl daemon-reload && \
sudo systemctl start jenkins && \
sudo systemctl enable jenkins && \


sudo cat /var/lib/jenkins/secrets/initialAdminPassword && \ 

#
sudo dnf install -y fontconfig java-17-openjdk && \

sudo curl -fsSL https://pkg.jenkins.io/redhat-stable/jenkins.repo \
    -o /etc/yum.repos.d/jenkins.repo && \
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key && \
sudo dnf install -y jenkins && \
sudo systemctl daemon-reload && \
sudo systemctl start jenkins && \
sudo systemctl enable jenkins 


