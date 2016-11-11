#!/bin/bash -eu

BROKERID={{ range $i, $services := service "nomad-client" }}{{ with node }}{{ if eq $services.Node .Node.Node }}{{ $i }}{{ end }}{{ end }}{{ end }}
HOSTNAME={{with node}}{{.Node.Address}}{{end}}
ZOOKEEPER_CONNECT={{ range $i, $services := service "nomad-client" }}{{printf "%s:2181," $services.Address}}{{ end }}
KAFKA_CONNECT={{ range $i, $services := service "nomad-client" }}{{printf "%s:9092," $services.Address}}{{ end }}

sed -r -i "s/(zookeeper.connect)=(.*)/\1=$ZOOKEEPER_CONNECT/g" $KAFKA_HOME/config/server.properties
sed -r -i 's/(zookeeper.connect)=(.*)(.$)/\1=\2''/g' $KAFKA_HOME/config/server.properties
sed -r -i "s/(zookeeper.connect)=(.*)/\1=$ZOOKEEPER_CONNECT/g" $KAFKA_HOME/config/consumer.properties
sed -r -i 's/(zookeeper.connect)=(.*)(.$)/\1=\2''/g' $KAFKA_HOME/config/consumer.properties
sed -r -i "s/(broker.id)=(.*)/\1=$BROKERID/g" $KAFKA_HOME/config/server.properties
sed -r -i "s/#(host.name)=(.*)/\1=$HOSTNAME/g" $KAFKA_HOME/config/server.properties
sed -r -i "s/(metadata.broker.list)=(.*)/\1=$KAFKA_CONNECT/g" $KAFKA_HOME/config/producer.properties
sed -r -i 's/(metadata.broker.list)=(.*)(.$)/\1=\2''/g' $KAFKA_HOME/config/producer.properties



$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties