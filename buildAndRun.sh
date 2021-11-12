#!/bin/sh
mvn clean package && docker build -t fr.grin/BelcaidTP1CustomerApp .
docker rm -f BelcaidTP1CustomerApp || true && docker run -d -p 9080:9080 -p 9443:9443 --name BelcaidTP1CustomerApp fr.grin/BelcaidTP1CustomerApp