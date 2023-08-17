#!/bin/bash
USERID=$(id -u)
validate(){
    if [ $1 -ne 0 ]
    then
      echo "$2 -- sucess"
    else
      echo "$2-- failure"  
    fi   
  }

if [ $USERID -ne 0 ]
then
   echo "please run the root user"
   exit 1
fi



yum install mysql -y
validate $? "mysql"
if [ $? -ne 0 ]
then 
   echo "mysql error"
   exit 1
else
   echo " mysql sucess"
fi 

yum install maven -y

validate $? "maven"