#!/bin/bash


domain=office.solrstation.com
server_name=cloud.solrstation.com

sudo docker pull collabora/code
sudo docker run --name collabora -t -d -p 9980:9980 -e “domain={$domain}” -e “server_name={$server_name}” --restart no --cap-add MKNOD collabora/code