#!/bin/sh

echo "replace {COLLECTOR_SERVER} to $COLLECTOR_SERVER"
eval sed -i -e 's/\{COLLECTOR_SERVER\}/$COLLECTOR_SERVER/' /usr/local/tomcat/agent-config/sky-walking.config

echo "replace {ZK_ADDRESS} to $ZK_ADDRESS"
eval sed -i -e 's/\{ZK_ADDRESS\}/$ZK_ADDRESS/' /usr/local/tomcat/webapps/dubbox-cases/WEB-INF/classes/dubbo-consumer.xml

exec "$@"
