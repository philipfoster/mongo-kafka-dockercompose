#! /bin/bash


KAFKA_DIR='./kafka_2.13-2.6.0'
TOPIC_NAME='trace-events'

if [ ! -d "$KAFKA_DIR" ]; then
    echo "Unzipping kafka cli tools"
    tar -zxf kafka_2.13-2.6.0.tgz
fi

echo "Creating topic"
$KAFKA_DIR/bin/kafka-topics.sh --create --topic $TOPIC_NAME --bootstrap-server localhost:9092