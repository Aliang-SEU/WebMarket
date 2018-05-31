package cn.aliang.dao;

import cn.aliang.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class UserDaoTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void insertUser() {
        User user = new User("hzl","1234","1234");
        user.setUserName("hzl");
        user.setRealName("hzl");
        user.setPassword("1234");
        user.setEmail("1234");
        user.setPhone("123");
        user.setAddress("nihaoa");
        int result = userDao.insertUser(user);
        System.out.println(result);
    }

    @Test
    public void deleteUser() {
        User user = new User("hzl","1234","1234");
        user.setUserId(2);
        int result = userDao.deleteUser(user);
        System.out.println(result);
    }

    @Test
    public void selectUserInfoByEmail(){
        int result = userDao.selectUserInfoByEmail("550@qq.com");
        System.out.println(result);
    }

}