#!/bin/bash


domain=192.168.86.58:9980 #Set this to the domain pointing to the collabora/code server
server_name=office.solrstation.com #Set this to the domain pointed to your nextcloud app
user=admin
pass=password
tz=TZ=America/New_York



sudo docker pull collabora/code
# sudo docker run --name collabora -t -d -p 9980:9980 -e “domain=$domain” -e “server_name=$server_name” --restart always --cap-add MKNOD collabora/code


sudo docker run --name collabora -t -d -p 9980:9980 --privileged -e username=$user -e password=$pass -e “domain=$domain” -e TZ=$tz -e “server_name=$server_name” -e "aliasgroup1=https://cloud.solrstation.com:443|cloud.solrstation.com:443" --restart always --cap-add MKNOD collabora/code
