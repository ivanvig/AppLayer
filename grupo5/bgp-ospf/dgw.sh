#!/bin/bash
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


