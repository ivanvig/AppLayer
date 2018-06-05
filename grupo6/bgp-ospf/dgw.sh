#!/bin/bash
docker exec -it bgp_b2_1 ip -6 r del default
docker exec -it bgp_r4_1 ip -6 r del default
docker exec -it bgp_r6_1 ip -6 r del default
docker exec -it bgp_r8_1 ip -6 r del default
docker exec -it bgp_h12_1 ip -6 r del default
docker exec -it bgp_h14_1 ip -6 r del default

docker exec -it bgp_r4_1 ip -6 r add default via 2001:b:3::3
docker exec -it bgp_r6_1 ip -6 r add default via 2001:b:3::3
docker exec -it bgp_r8_1 ip -6 r add default via 2001:b:3::3
docker exec -it bgp_h12_1 ip -6 r add default via 2001:b:5::20
docker exec -it bgp_h14_1 ip -6 r add default via 2001:b:6::10


