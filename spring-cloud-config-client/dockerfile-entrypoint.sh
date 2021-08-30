#!/bin/sh
dockerize -wait tcp://$RABBITMQ_HOST:$RABBITMQ_PORT -timeout 10s
dockerize -wait tcp://$CLOUD_CONFIG_SERVER_HOST:$CLOUD_CONFIG_SERVER_PORT -timeout 40s
java -jar /app.jar
