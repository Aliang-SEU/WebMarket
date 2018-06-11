package cn.aliang.dao;

import cn.aliang.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
        User user = new User("hzl","1234","1234");
        user.setUserName("hzl");
        user.setRealName("hzl");
        user.setPassword("1234");
        user.setEmail("1234");
        user.setPhone("123");
        user.setAddress("nihaoa");
        Integer result = userDao.alterUserInfo(user);
        System.out.println(result);
    }

    public static String md5(String plainText) {
        byte[] secretBytes = null;
        try {
            secretBytes = MessageDigest.getInstance("md5").digest(plainText.getBytes());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("没有md5这个算法！");
        }
        String md5code = new BigInteger(1, secretBytes).toString(16);// 16进制数字
        // 如果生成数字未满32位，需要前面补0
        for (int i = 0; i < 32 - md5code.length(); i++) {
            md5code = "0" + md5code;
        }
        return md5code;
    }

    @Test
    public void adminTest(){
        String username = "admin";
        String password = "admin";
        String s = md5(password);
        Integer result = userDao.selectAdminByUsernameAndPassword("admin", "admin");
        System.out.println(result);
    }

}