#!/bin/bash

source=$1
dest=$2

docker run --rm -v $source:/source.tar.gz -v $dest:/dest ubuntu bash -c "cd /dest && tar -xzvf /source.tar.gz ."
