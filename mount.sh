#!/bin/bash

volume=$1

docker run -it -v $volume:/data ubuntu /bin/bash
