docker network create --driver bridge --ipv6 --ipam-driver=default --subnet 2001:a:1::/64 --subnet 192.168.2.0/24 net0
docker network create --driver bridge --ipv6 --subnet 2001:d:1::/64 redD
docker network create --driver bridge --ipv6 --ipam-driver=default --subnet 2001:a:2::/64 red2
docker network create --driver bridge --ipv6 --subnet 2001:a:3::/64 red3
docker network create --driver bridge --ipv6 --subnet 2001:a:4::/64 red4
docker network create --driver bridge --ipv6 --subnet 2001:a:5::/64 red5
docker network create --driver bridge --ipv6 --subnet 2001:a:6::/64 red6
docker network create --driver bridge --ipv6 --subnet 2001:a:7::/64 red7

