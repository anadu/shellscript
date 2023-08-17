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
   echo "mysql error"
   exit 1
else
   echo " mysql sucess"
fi 

yum install mavenn -y

if [ $? -ne 0 ]
then 
   echo "install the maven failure"
   exit 1
else
   echo "install the maven is sucess"  
fi   

