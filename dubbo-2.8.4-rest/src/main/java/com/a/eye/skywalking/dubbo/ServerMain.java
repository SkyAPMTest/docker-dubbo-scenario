package com.a.eye.skywalking.dubbo;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;

/**
 * Created by xin on 2016/12/6.
 */
public class ServerMain {

    public static void main(String[] args) throws InterruptedException, IOException {
        DubboProviderServer.startServer();
        DubboConsumerHttpServer.startServer();
    }
}
