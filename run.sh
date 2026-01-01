#!/bin/bash

docker build -t mini-cicd:local .
docker run -d --name mini-cicd -p 8080:8080 mini-cicd:local
curl http://localhost:8080
docker rm -f mini-cicd

