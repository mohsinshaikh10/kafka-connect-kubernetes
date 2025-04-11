# Use Confluent Kafka Connect base image
FROM confluentinc/cp-kafka-connect:7.4.0

# Install the BigQuery Sink Connector (latest version)
RUN confluent-hub install --no-prompt wepay/kafka-connect-bigquery:latest

# Set working directory
WORKDIR /kafka

# Expose Kafka Connect REST API port
EXPOSE 8083

# Start Kafka Connect service
CMD ["bash", "-c", "echo 'Starting Kafka Connect...' && /etc/confluent/docker/run"]
