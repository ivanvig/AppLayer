#!/bin/bash
docker exec -it bgp_b1_1 ip -6 r del default
docker exec -it bgp_r3_1 ip -6 r del default
docker exec -it bgp_r5_1 ip -6 r del default
docker exec -it bgp_r7_1 ip -6 r del default
docker exec -it bgp_h11_1 ip -6 r del default
docker exec -it bgp_h13_1 ip -6 r del default

docker exec -it bgp_r3_1 ip -6 r add default via 2001:a:3::3
docker exec -it bgp_r5_1 ip -6 r add default via 2001:a:3::3
docker exec -it bgp_r7_1 ip -6 r add default via 2001:a:3::3
docker exec -it bgp_h11_1 ip -6 r add default via 2001:a:5::20
docker exec -it bgp_h13_1 ip -6 r add default via 2001:a:6::10


