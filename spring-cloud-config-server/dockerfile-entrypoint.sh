#!/bin/sh
dockerize -wait tcp://$RABBITMQ_HOST:$RABBITMQ_PORT -timeout 10s
java -jar /app.jar
