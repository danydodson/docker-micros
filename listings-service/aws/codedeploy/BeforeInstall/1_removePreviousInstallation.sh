#!/bin/sh

deployment_dir=/opt/docker-micros/listings-service
if [ -d "$deployment_dir" ] && [ -x "$deployment_dir" ]; then
  cd /opt/docker-micros/listings-service

  rm -rf *
fi