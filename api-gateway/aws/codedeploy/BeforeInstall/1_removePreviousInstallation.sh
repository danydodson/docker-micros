#!/bin/sh

deployment_dir=/opt/docker-micros/api-gateway
if [ -d "$deployment_dir" ] && [ -x "$deployment_dir" ]; then
  cd /opt/docker-micros/api-gateway

  rm -rf *
fi