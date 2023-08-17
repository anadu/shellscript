#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "please run the root user"
   exit 1
fi



yum install mysql -y
if [ $? -ne 0 ]
then 
   echo "mysql sucess"
   exit 1
else
   echo " mysql failure"
fi   

