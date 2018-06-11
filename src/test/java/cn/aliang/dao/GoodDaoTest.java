package cn.aliang.dao;

import cn.aliang.entity.Good;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class GoodDaoTest {

    @Autowired
    private GoodDao goodDao;

    @Test
    public void queryGoodsByType() {
        List<Good> result = goodDao.queryGoodsByType(1);
        System.out.println(result);
    }

    @Test
    public void test(){
        List<Good> result = goodDao.queryGoodsByPageAdmin(1,5);
        System.out.println(result);
    }

    @Test
    public void test2(){
        List<Good> result = goodDao.queryWithKeyWords("%手机%", 5, 20);
        for(Good item : result)
         System.out.println(item);
    }
    @Test
    public void test3(){
        Good good = new Good();
        good.setCounts(100);
        good.setDescription("手机");
        good.setKeyWord("手机");
        good.setName("小米");
        good.setPrice(1000.00);
        good.setType(1);
        System.out.println(goodDao.addGoodInfo(good));

    }
    @Test
    public void test4(){
        Good good = new Good();
        good.setGoodId(676);
        good.setCounts(100);
        good.setDescription("手机");
        good.setKeyWord("手机");
        good.setName("小米111");
        good.setPrice(1000.00);
        good.setType(1);
        System.out.println(goodDao.alterGoodInfo(good));
    }
}