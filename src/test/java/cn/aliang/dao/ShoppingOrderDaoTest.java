package cn.aliang.dao;

import cn.aliang.entity.ShoppingOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class ShoppingOrderDaoTest {

    @Autowired
    private ShoppingOrderDao shoppingOrderDao;

    @Test
    public void queryOrderByUserId() throws Exception {

        List<ShoppingOrder> list = shoppingOrderDao.queryOrderByUserId(1);
        for(ShoppingOrder order : list) {
            System.out.println(order);
        }

    }

}