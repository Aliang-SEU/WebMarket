package cn.aliang.service.impl;

import cn.aliang.entity.ShoppingOrder;
import cn.aliang.service.ShoppingOrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-*.xml"})
public class ShoppingOrderServiceImplTest {

    @Autowired
    private ShoppingOrderServiceImpl shoppingOrderService;

    @Test
    public void order(){
       System.out.println(shoppingOrderService.createOrderNumber(12321421));
    }
}