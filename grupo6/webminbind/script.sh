docker exec -it tp6_bind_1 apt-get -o Acquire::ForceIPv4=true update
docker exec -it tp6_bind_1 apt-get -o Acquire::ForceIPv4=true install libsocket6-perl
docker exec -it tp6_bind_1 apt-get -o Acquire::ForceIPv4=true install nano