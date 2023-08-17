USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
   echo "please run the script to run the sudo user"
   exit 1

yum install git -y
echo $?

