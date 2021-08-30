#!/bin/sh
dockerize -wait tcp://$RABBITMQ_HOST:$RABBITMQ_PORT -timeout 10s
exec java -jar /app.jar
