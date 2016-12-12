FROM zookeeper:3.4.9

ENV SERVER_LIST=127.0.0.1:34000 \
    USER_NAME=test \
    APPLICATION_CODE=test

RUN  mkdir /dubbo & mkdir -p /usr/local/agent

COPY docker-dubbo-2.8.4.jar /dubbo
COPY start.sh  /dubbo

RUN chmod +x /dubbo/start.sh

# agent jar file
VOLUME /usr/local/agent

#JPDA
EXPOSE 8000 8080

ENTRYPOINT ["/dubbo/start.sh"]