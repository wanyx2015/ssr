#!/bin/sh

#set -x

#. ./libs.sh
num=$1

i=0; while [ $i -lt $num ]; do ./add_ssr_user.sh ;  i=$[$i+1]; done;

