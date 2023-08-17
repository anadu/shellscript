#!/bin/bash
USERID=$(id -u)
validate(){
    if [ $1 -ne 0 ]
    then
      echo "$2 -- failure"
    else
      echo "$2-- sucess"  
    fi   
  }

if [ $USERID -ne 0 ]
then
   echo "please run the root user"
   exit 1
fi



yum install mysql -y
validate $? "mysql"


yum install maven -y

validate $? "maven"