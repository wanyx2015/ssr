#!/bin/sh
#set -x
. ./libs.sh

port=$1

Get_User_transfer "${port}"

		user_list_all=${user_list_all}"用户名: ${Green_font_prefix} "${user_username}"${Font_color_suffix}\t 端口: ${Green_font_prefix}"${user_port}"${Font_color_suffix}\t 流量使用情况(已用+剩余=总): ${Green_font_prefix}${transfer_enable_Used_2}${Font_color_suffix} + ${Green_font_prefix}${transfer_enable_Used}${Font_color_suffix} = ${Green_font_prefix}${transfer_enable}${Font_color_suffix}\n"
	echo && echo -e "=== 用户总数 ${Green_background_prefix} "${user_total}" ${Font_color_suffix}"
	echo -e ${user_list_all}


List_port_user
