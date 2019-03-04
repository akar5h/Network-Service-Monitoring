#! /bin/bash
# /usr/local/bin/randn.sh
#

sudo chmod +x /home/vm1/Desktop/rnumber.sh 
function r_start()
{
	echo "Randn: Starting Service"
	/home/vm1/Desktop/rnumber.sh &
	echo $!>/var/run/rnumber.pid
	echo "Started"
}
function r_stop()
{
	echo "Randn: Stopping Service"
	kill $( cat /var/run/rnumber.pid) 
	rm /var/run/rnumber.pid
}
function r_status()
{
	ps -ef | grep randn | grep -v grep 
	echo "PID indicate indication file $( cat /var/run/rnumber.pid)"
}

touch /var/lock/randn

case "$1" in
	start)
		r_start
		;;
	stop)
		r_stop
		;;
	reload)
		r_stop
		sleep 1
		r_start
		;;
	status)
		r_status
		;;
	*)
	echo "Usage: $0 {start | stop | reload } "
	exit 1
	;;
esac

exit 0
