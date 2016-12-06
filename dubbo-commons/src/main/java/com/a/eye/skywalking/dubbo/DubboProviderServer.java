package com.a.eye.skywalking.dubbo;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by xin on 2016/12/5.
 */
public class DubboProviderServer extends Thread {

    private static DubboProviderServer dubboServer = new DubboProviderServer();

    private DubboProviderServer() {
        super("dubbo provider");
    }

    @Override
    public void run() {
        try {
            ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath*:provider/dubbo-provider.xml");
            context.start();

            while (true) {
                try {
                    Thread.sleep(60 * 60 * 1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        } finally {
            System.exit(-1);
        }
    }

    public static void startServer() {
        dubboServer.start();
    }
}
