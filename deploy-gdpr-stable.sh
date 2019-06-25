#!/bin/bash
set -e
for i in $(docker image ls |grep pontusvision|grep latest| awk '{ print $1 }'); do 
  docker tag $i $i:gdpr-stable && docker push $i:gdpr-stable 
done

