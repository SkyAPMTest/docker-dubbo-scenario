package com.a.eye.skywalking.dubbo.provider;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class GreetServiceImpl implements GreetService {
    private Logger logger = LoggerFactory.getLogger(GreetServiceImpl.class);

    public String sayHello() {
        logger.info("begin to say hello");
        try {
            Thread.sleep(50);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return "it works";
    }
}
