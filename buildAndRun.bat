@echo off
call mvn clean package
call docker build -t fr.grin/BelcaidTP1CustomerApp .
call docker rm -f BelcaidTP1CustomerApp
call docker run -d -p 9080:9080 -p 9443:9443 --name BelcaidTP1CustomerApp fr.grin/BelcaidTP1CustomerApp