FROM openjdk:8-jdk-alpine
COPY dockerfile-entrypoint.sh .
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENV DOCKERIZE_VERSION v0.6.1
RUN apk add --no-cache openssl \
&& wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
&& tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
&& rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
&& chmod 777 dockerfile-entrypoint.sh \
&& addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ENTRYPOINT ["/bin/sh", "-c", "./dockerfile-entrypoint.sh"]