#!/bin/bash

echo -e "\e[1;33m BGP-OSPF \e[0m"
docker exec -it bgpospf_b1_1 ip -6 r del default
docker exec -it bgpospf_r3_1 ip -6 r del default
docker exec -it bgpospf_r5_1 ip -6 r del default
docker exec -it bgpospf_r7_1 ip -6 r del default
docker exec -it bgpospf_h11_1 ip -6 r del default
docker exec -it bgpospf_h13_1 ip -6 r del default

docker exec -it bgpospf_r3_1 ip -6 r add default via 2001:a:3::3
docker exec -it bgpospf_r5_1 ip -6 r add default via 2001:a:3::3
docker exec -it bgpospf_r7_1 ip -6 r add default via 2001:a:3::3
docker exec -it bgpospf_h11_1 ip -6 r add default via 2001:a:5::10
docker exec -it bgpospf_h13_1 ip -6 r add default via 2001:a:6::10

#Nginx
echo -e "\e[1;36m Nginx \e[0m"
docker exec -it nginx_web_1 apt-get update
docker exec -it nginx_web_1 apt-get install iproute
docker exec -it nginx_web_1 ip -6 r del default
docker exec -it nginx_web_1 ip -6 r add default via 2001:a:2::10

#Webmin
echo -e "\e[1;32m Webmin \e[0m"
docker exec -it webminbind_bind_1 apt-get update
docker exec -it webminbind_bind_1 apt-get install iproute
docker exec -it webminbind_bind_1 ip -6 r del default
docker exec -it webminbind_bind_1 ip -6 r add default via 2001:a:4::10