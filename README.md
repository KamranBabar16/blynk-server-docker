# blynk-server-docker

Runs your own Blynk Server in a Docker container instead of relying on Blynk's public server.

Blynk is the "first drag-n-drop IoT app builder for Arduino, Raspberry Pi, ESP8266, SparkFun boards, and others." Super fun.

How To Use It
Easy peasy:

docker run mpherg/blynk-server:latest
To forward IP ports from the host to the container, do this:

docker run -p 8080:8080 -p 8441:8441 -p 9443:9443 mpherg/blynk-server:latest
To persist data, mount a directory into the container:

docker run -v $(PWD):/data mpherg/blynk-server:latest
To include your own server.properties file, mount it into /config/server.properties

docker run -v $(PWD)/server.properties:/config/server.properties mpherg/blynk-server:latest
Or you can use a data volume in another container (check out different data volume techniques here).
