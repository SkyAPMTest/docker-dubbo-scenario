#!/usr/bin/env bash

PRG="$0"
PRGDIR=`dirname "$PRG"`
[ -z "$DUBBO_PROVIDER_HOME" ] && DUBBO_PROVIDER_HOME=`cd "$PRGDIR/.." >/dev/null; pwd`

AGENT_FILE_PATH=$DUBBO_PROVIDER_HOME/agent

if [ -f "$AGENT_FILE_PATH/skywalking-agent.jar" ];then
    DUBBO_PROVIDER_OPTS=" -javaagent:$AGENT_FILE_PATH/skywalking-agent.jar -Dconfig=/usr/local/dubbox-provider/agent-config"
fi

_RUNJAVA=${JAVA_HOME}/bin/java
[ -z "$JAVA_HOME" ] && _RUNJAVA=`java`

CLASSPATH="$DUBBO_PROVIDER_HOME/config:$CLASSPATH"
for i in "$DUBBO_PROVIDER_HOME"/libs/*.jar
do
    CLASSPATH="$i:$CLASSPATH"
done

JAVA_OPTS="$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"

$JAVA_HOME/bin/java $JAVA_OPTS -classpath "$CLASSPATH" $DUBBO_PROVIDER_OPTS org.skywaking.apm.testcase.dubbo.provider.Main
