#!/bin/bash


domain=office.solrstation.com #Set this to the domain pointing to the collabora/code server
server_name=cloud.solrstation.com #Set this to the domain pointed to your nextcloud app
user=admin
pass=password


sudo docker pull collabora/code
# sudo docker run --name collabora -t -d -p 9980:9980 -e “domain=$domain” -e “server_name=$server_name” --restart always --cap-add MKNOD collabora/code


sudo docker run --name collabora -t -d -p 9980:9980 -e username=$user -e password=$pass -e “domain=$domain” -e “server_nam>
