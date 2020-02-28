#!/bin/sh
cd /opt/docker-micros/users-service
mv .production.env .env
yarn
