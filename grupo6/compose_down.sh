#Docker compose de toda la red

# Nginx
cd nginx
docker-compose down
cd ..
# Strapi
cd strapi-docker-master
docker-compose down
cd ..
# OSPF
cd bgp-ospf
docker-compose down
cd ..