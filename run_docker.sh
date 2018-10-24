#!bin/bash
wport=$1
port=$2

docker run -tid -P \
-v /home/taketoshi.kazusa/work/:/root/work/ \
-p $port:6006 -p $wport:8888 \
--name baseimage.kazusa baseimage_taketoshi.kazusa	
 
