package cn.aliang.service.impl;

import cn.aliang.entity.Good;
import cn.aliang.service.GoodService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-*.xml"})
public class GoodServiceImplTest {

    @Autowired
    private GoodService goodService;

    @Test
    public void listGoodsByType() {
        List<Good> list = goodService.listGoodsByType(1);
        for(Good i : list)
            System.out.println(i);
    }

    @Test
    public void listGoodsByType1() {
        List<Good> list = goodService.queryGoodsByPage(1,1,5);
        for(Good i : list)
            System.out.println(i);
    }
}