FROM openjdk:11-jre
Kamran Babar <kamran@knixlab.com>

ENV BLYNK_SERVER_VERSION 0.41.17
RUN mkdir /blynk
RUN curl -L https://github.com/blynkkk/blynk-server/releases/download/v${BLYNK_SERVER_VERSION}/server-${BLYNK_SERVER_VERSION}.jar > /blynk/server.jar

# Create data folder. To persist data, map a volume to /data
RUN mkdir /data

# Create configuration folder. To persist data, map a file to /config/server.properties
RUN mkdir /config && touch /config/server.properties
VOLUME ["/config", "/data/backup"]

# IP port listing:
# 8181: Hardware without ssl/tls support
# 9444: Blynk app, https, web sockets, admin port
EXPOSE 8181 9444

WORKDIR /data
ENTRYPOINT ["java", "-jar", "/blynk/server.jar", "-dataFolder", "/data", "-serverConfig", "/config/server.properties"]
