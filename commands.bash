# start kafka docker container 
docker run -p 9092:9092 apache/kafka:3.7.1

# Get shell access to containe
docker ps
docker exec -it container_id /bin/bash
cd /opt/kafka/bin

# Create a topic
./kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092

# Create the consumer 
./kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092

# Create a publisher 
./kafka-console-producer.sh --topic quickstart-events --bootstrap-server localhost:9092