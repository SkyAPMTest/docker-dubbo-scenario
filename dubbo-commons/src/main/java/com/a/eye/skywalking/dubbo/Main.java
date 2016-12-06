package com.a.eye.skywalking.dubbo;

import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        DubboProviderServer.startServer();
        DubboConsumerHttpServer.startServer();
    }
}
