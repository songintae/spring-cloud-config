./wait-for-it.sh $RABBITMQ_HOST:$RABBITMQ_PORT -t 10 -- echo "rabbitmq is up"
java -cp app:app/lib/* com.example.demo.SpringCloudConfigServerApplication
