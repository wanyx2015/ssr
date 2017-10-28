#!/bin/sh

#set -x

. ./libs.sh

# 生成随机用户id
userid=$[ ${RANDOM} % 10000 ]
while [ ${userid} -lt 1000 ];
do
	userid=$(( ${RANDOM} % 10000 ))
done
echo userid 4 digits: ${userid}

# 生成随机端口号
ssr_port=$(( ${RANDOM} % 50000 ))
while [ ${ssr_port} -lt 3000 ];
do
	ssr_port=$(( ${RANDOM} % 50000 ))
done
echo port 3000~50000: ${ssr_port}

# 生成随机密码
ssr_password_seed=$(( ${RANDOM} % 100000 ))
while [ ${ssr_password_seed} -lt 10000 ];
do
	ssr_password_seed=$(( ${RANDOM} % 100000 ))
done
echo password seed in 5 digits: ${ssr_password_seed}

ssr_user=guest${userid}
ssr_port=${ssr_port}
ssr_password=user${ssr_password_seed}
ssr_method="aes-256-cfb"
ssr_protocol="auth_sha1_v4"
ssr_obfs="tls1.2_ticket_auth"
ssr_protocol_param=""
ssr_speed_limit_per_con=500
ssr_speed_limit_per_user=600
ssr_transfer=50
ssr_forbid=""

check_sys
Get_IP
#Del_iptables ${ssr_port}
Add_iptables
Save_iptables


python mujson_mgr.py -a -u "${ssr_user}" -p "${ssr_port}" -k "${ssr_password}" -m "${ssr_method}" -O "${ssr_protocol}" -G "${ssr_protocol_param}" -o "${ssr_obfs}" -s "${ssr_speed_limit_per_con}" -S "${ssr_speed_limit_per_user}" -t "${ssr_transfer}" -f "${ssr_forbid}"


#Get_User_info "${ssr_port}"
#View_User_info
