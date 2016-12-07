package com.a.eye.skywalking.dubbo.provider.impl;

import com.a.eye.skywalking.dubbo.provider.interfaces.GreetService;
import com.alibaba.dubbo.config.annotation.Service;

/**
 * Created by xin on 2016/12/6.
 */
@Service
public class GreetServiceImpl implements GreetService{
    @Override
    public String doBusiness() {
        return "{\"content\":\"Hello World\"}";
    }
}
