#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "please run the root user"
   exit 1
fi

yum install git -y

if [ $? -ne 0 ]
then 
   echo "git sucess"
else
   echo "git failure"
fi   

yum install mysql -y
if [ $? -ne 0 ]
then 
   echo "mysql sucess"
else
   echo " git failure"
fi   

