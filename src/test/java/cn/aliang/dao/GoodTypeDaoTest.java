package cn.aliang.dao;

import cn.aliang.entity.GoodType;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class GoodTypeDaoTest {

    @Autowired
    GoodTypeDao goodTypeDao;

    @Test
    public void queryGoodType() {
        List<GoodType> result = goodTypeDao.queryGoodType();
        System.out.println(result);
    }

    @Test
    public void addGoodType() {
    }
}