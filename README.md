# Blynk Server Docker Image [Modified Ports]

[![](https://images.microbadger.com/badges/image/mpherg/blynk-server.svg)](http://microbadger.com/images/mpherg/blynk-server
"Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/mpherg/blynk-server.svg)](http://microbadger.com/images/mpherg/blynk-server
"Get your own version badge on microbadger.com")

Runs your own [Blynk Server](https://github.com/blynkkk/blynk-server) in a Docker container instead of relying on Blynk's public server.

[Blynk](http://www.blynk.cc) is the "first drag-n-drop IoT app builder for Arduino, Raspberry Pi, ESP8266, SparkFun boards, and others." Super fun.

## How To Use It

Easy peasy:

```sh
docker run KamranBabar16/blynk-server-docker:latest
```

To forward IP ports from the host to the container, do this:

```sh
docker run -p 8181:8181 -p 8441:8441 -p 9444:9444 KamranBabar16/blynk-server-docker:latest
```

To persist data, mount a directory into the container:

```sh
docker run -v $(PWD):/data KamranBabar16/blynk-server-docker:latest
```

To include your own server.properties file, mount it into /config/server.properties

```sh
docker run -v $(PWD)/server.properties:/config/server.properties KamranBabar16/blynk-server-docker:latest
```

Or you can use a data volume in another container (check out different data volume techniques [here](https://docs.docker.com/engine/tutorials/dockervolumes/)).
