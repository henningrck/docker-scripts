#!/bin/bash

source=$1
dest=$2
date=`date "+%Y%m%d-%H%M%S"`

docker run --rm -v $source:/source -v $dest:/dest ubuntu bash -c "cd /source && tar -czvf /dest/$source-$date.tar.gz ."
