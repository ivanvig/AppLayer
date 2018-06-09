#!/bin/bash
docker exec -it bgpospf_b2_1 ip -6 r del default
docker exec -it bgpospf_r4_1 ip -6 r del default
docker exec -it bgpospf_r6_1 ip -6 r del default
docker exec -it bgpospf_r8_1 ip -6 r del default
docker exec -it bgpospf_h12_1 ip -6 r del default
docker exec -it bgpospf_h14_1 ip -6 r del default

docker exec -it bgpospf_r4_1 ip -6 r add default via 2001:b:3::3
docker exec -it bgpospf_r6_1 ip -6 r add default via 2001:b:3::3
docker exec -it bgpospf_r8_1 ip -6 r add default via 2001:b:3::3
docker exec -it bgpospf_h12_1 ip -6 r add default via 2001:b:5::10
docker exec -it bgpospf_h14_1 ip -6 r add default via 2001:b:6::10


