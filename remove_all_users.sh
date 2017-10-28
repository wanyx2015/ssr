#!/bin/sh
#set -x
. ./libs.sh


for port in `python mujson_mgr.py -l | awk '{print $4}'`;
do
#	echo $port
#	usage=`List_port_user "${port}" | grep ${port} | awk  -F " " '{print $7}' |tr -d '[:space:]'`
#echo $usage
#Del_iptables ${port}
Del_port_user ${port}
#	if [ "$usage" = "0" ];
#then
#echo removing ${port}
#Del_port_user ${port}
#else
#	echo "$usage" is not "0"
#fi 
	#Get_User_transfer "${port}"
done
	



#List_port_user "${port}"
#Del_port_user ${port}


