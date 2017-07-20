#!/usr/bin/env bash

echo "replace {COLLECTOR_SERVER} to $COLLECTOR_SERVER"
eval sed -i -e 's/\{COLLECTOR_SERVER\}/$COLLECTOR_SERVER/' /usr/local/dubbox-provider/agent-config/sky-walking.config

echo "replace {ZK_ADDRESS} to $ZK_ADDRESS"
eval sed -i -e 's/\{ZK_ADDRESS\}/$ZK_ADDRESS/' /usr/local/dubbox-provider/config/dubbo-provider.xml

exec "$@"
