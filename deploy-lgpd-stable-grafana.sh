#!/bin/bash
set -e
for i in $(docker image ls |grep pontusvision|grep latest| awk '{ print $1 }'); do 
  docker tag $i $i:lgpd-stable-grafana && docker push $i:lgpd-stable-grafana 
done

