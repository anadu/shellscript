validate(){
    if [ $1 -ne 0 ]
    then
       echo "$2 -- failure"
    else
       echo  "$2  --sucess" 
}


for i in $@
do
   yum install $i -y
   validate $? $i
done   
