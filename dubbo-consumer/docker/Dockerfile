FROM tomcat:8.0.45-jre8-alpine

ENV COLLECTOR_SERVER=127.0.0.1:12800 \
    ZK_ADDRESS=127.0.0.1:2181

COPY catalina.sh /usr/local/tomcat/bin/
ADD dubbox-consumer /usr/local/tomcat/webapps/dubbox-cases
COPY sky-walking.config /usr/local/tomcat/agent-config/sky-walking.config
COPY dubbo-consumer.xml /usr/local/tomcat/webapps/dubbox-cases/WEB-INF/classes/

ADD docker-entrypoint.sh /
RUN chmod +x /usr/local/tomcat/bin/catalina.sh && chmod +x /docker-entrypoint.sh

VOLUME /usr/local/tomcat/agent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]
