cd /opt/aria2conf
echo '1:start | 2:stop'
read Num
case $Num in
    1)  nohup aria2c --conf-path=aria2.conf &
    ;;
    2)  kill `ps -ef | grep aria2c | awk '{print$2}'`
    ;;
    *)  echo 'input error !!!'
    ;;
esac
#alias as="sh /opt/aria2conf/start.sh"
