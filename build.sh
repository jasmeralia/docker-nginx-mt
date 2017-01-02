#!/bin/bash

if [ "x$1" == "x" ]; then
  CACHE="--no-cache"
else
  CACHE=""
fi

DATE=$(date +%Y%m%d.%H%M)
echo "Building docker-nginx-mt:trusty.$DATE"
docker build $CACHE -t="stormerider/docker-nginx-mt:trusty.$DATE" . && \
echo "" && \
echo "Pushing docker-nginx-mt:trusty.$DATE" && \
docker push stormerider/docker-nginx-mt:trusty.$DATE

echo ""
echo "Building docker-nginx-mt:latest"
docker build -t="stormerider/docker-nginx-mt:latest" . && \
echo "" && \
echo "Pushing docker-nginx-mt:latest" && \
docker push stormerider/docker-nginx-mt:latest

#echo ""
#echo "Building docker-nginx-mt:xenial.$DATE"
#docker build $CACHE -t="stormerider/docker-nginx-mt:xenial.$DATE" . -f Dockerfile-xenial && \
#echo "" && \
#echo "Pushing docker-nginx-mt:xenial.$DATE" && \
#docker push stormerider/docker-nginx-mt:xenial.$DATE
#
#echo ""
#echo "Building docker-nginx-mt:xenial"
#docker build -t="stormerider/docker-nginx-mt:xenial" . -f Dockerfile-xenial && \
#echo "" && \
#echo "Pushing docker-nginx-mt:xenial" && \
#docker push stormerider/docker-nginx-mt:xenial
