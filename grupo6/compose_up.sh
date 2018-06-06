#Docker compose de toda la red

# Nginx
cd nginx
docker-compose up
cd ..
# Strapi
cd strapi-docker-master
docker-compose up
cd ..
# OSPF
cd bgp-ospf
docker-compose up
cd ..