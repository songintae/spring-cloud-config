./wait-for-it.sh $RABBITMQ_HOST:$RABBITMQ_PORT -t 10 -- echo "rabbitmq is up"
./wait-for-it.sh $CLOUD_CONFIG_SERVER_HOST:$CLOUD_CONFIG_SERVER_PORT -t 20 -- echo "cloud-config-server is up"
java -jar /app.jar
