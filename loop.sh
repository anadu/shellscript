#! /bin/bash

for i in {1..100}
do
   echo $i
done   
==================

validate(){
    if [ $1 -ne 0 ]
    then
       echo failure $2
    else
       echo sucess $2
    fi      

}



for i in $@
do 
   yum install $i -y
   validate $? "$i"

done