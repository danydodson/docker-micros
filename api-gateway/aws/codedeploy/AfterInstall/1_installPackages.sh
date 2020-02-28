#!/bin/sh
cd /opt/docker-micros/api-gateway
mv .production.env .env
yarn
