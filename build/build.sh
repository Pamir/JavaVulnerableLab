#!/bin/sh
cd ..
mvn clean install
cp target/*.war docker/
cd docker
docker build -t vulnerable-tomcat .
docker-compose --project-name sm down
docker-compose --project-name sm up -d
cd ../build

