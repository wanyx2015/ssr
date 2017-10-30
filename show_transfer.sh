#!/bin/sh
#set -x
. ./libs.sh

if [ $# -eq 0 ];
then
    echo "Usage: $0 [port]"
    exit 1
fi

port=$1

#Get_User_transfer "${port}"



List_port_user "${port}"
#List_port_user
