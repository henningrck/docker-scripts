#!/bin/bash

dest=$1
date=`date "+%Y%m%d-%H%M%S"`
containers=$(docker ps -aq)
volumes=$(docker volume ls -q)

docker stop $containers

for source in $volumes
do
    docker run --rm -v $source:/source -v $dest:/dest ubuntu bash -c "cd /source && tar -czvf /dest/$source-$date.tar.gz ."
done

docker start $containers
