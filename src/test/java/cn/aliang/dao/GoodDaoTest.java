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
}