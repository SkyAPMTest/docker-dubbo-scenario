
Build image by the following command
```bash
 mvn clean package
```

Run the container
```bash
docker run -it -p 8000:8000 -p 8080:8080 --env SERVER_LIST=192.168.1.4 -v /Users/xin/workbench/sky-walking/agent:/usr/local/agent skywalking/docker-dubbo-scenario:2.5.3
```