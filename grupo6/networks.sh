docker network create --driver bridge --ipv6 --ipam-driver=default --subnet 2001:b:1::/64 --subnet 192.168.2.0/24 net0
docker network create --driver bridge --ipv6 --subnet 2001:d:1::/64 redD
docker network create --driver bridge --ipv6 --ipam-driver=default --subnet 2001:b:2::/64 red2
docker network create --driver bridge --ipv6 --subnet 2001:b:3::/64 red3
docker network create --driver bridge --ipv6 --subnet 2001:b:4::/64 red4
docker network create --driver bridge --ipv6 --subnet 2001:b:5::/64 red5
docker network create --driver bridge --ipv6 --subnet 2001:b:6::/64 red6
docker network create --driver bridge --ipv6 --subnet 2001:b:7::/64 red7

