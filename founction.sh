VALIDATE(){
    #$1 --> it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
    echo "ERROR:: Please run this script with root access"
    echo "the number of argunemnts $#"
    echo "the number of variables $@"
    exit 1
# else
#     echo "INFO:: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MySQL"
echo "the number of argunemnts $#"
echo "the number of variables $@"

yum install posddtfix -y &>>$LOGFILE

VALIDATE $? "Installing postfix"