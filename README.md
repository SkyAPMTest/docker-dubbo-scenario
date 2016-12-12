
Build image by the following command
```bash
 mvn clean package
```

Run the container
```bash
docker run -it -p 8000:8000 -p 8080:8080 --env SERVER_LIST=127.0.0.1:34000 -v /path/to/agent:/usr/local/agent skywalking/docker-dubbo-scenario:2.5.3
```