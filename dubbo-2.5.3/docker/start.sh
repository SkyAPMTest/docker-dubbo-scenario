#!/usr/bin/env bash

SKYWALKING_AGENT_FILE="/usr/local/agent/skywalking-agent.jar"
SKYWALKING_OPTS=""

if [ ! -f "$SKYWALKING_AGENT_FILE" ]; then
    echo "skywalking agent file cannot be found."
else
    SKYWALKING_OPTS=" -DuserId=${USER_ID} -DapplicationCode=${APPLICATION_CODE} -Dservers=${SERVER_LIST} -Dagent=${SKYWALKING_AGENT_FILE} -javaagent:$SKYWALKING_AGENT_FILE"
fi


#start zookeeper first
/docker-entrypoint.sh zkServer.sh start-foreground > /dev/null & 2>&1 &

$JAVA_HOME/bin/java $SKYWALKING_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000 -jar /dubbo/docker-dubbo-2.5.3.jar
