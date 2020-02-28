#!/bin/sh

deployment_dir=/opt/docker-micros/users-service
if [ -d "$deployment_dir" ] && [ -x "$deployment_dir" ]; then
  cd /opt/docker-micros/users-service

  rm -rf *
fi