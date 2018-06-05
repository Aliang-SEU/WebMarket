package cn.aliang.dao;

import cn.aliang.entity.ReceiveAddress;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class ReceiveAddressDaoTest {

    @Autowired
    private ReceiveAddressDao receiveAddressDao;

    @Test
    public void queryAllReceiveAddressByUserId() throws Exception {
        List<ReceiveAddress> result = receiveAddressDao.queryAllReceiveAddressByUserId(1);
        System.out.println(result);
    }

    @Test
    public void insertReceiveAddress() throws Exception {
        ReceiveAddress receiveAddress = new ReceiveAddress();
        receiveAddress.setAddress("上海市浦东新区翔融苑555弄");
        receiveAddress.setPhone("15365717159");
        receiveAddress.setReceiveName("梁朝伟");
        receiveAddress.setUserId(1);
        Integer result = receiveAddressDao.insertReceiveAddress(receiveAddress);
        System.out.println(result);
    }

    @Test
    public void deleteReceiveAddressById() throws Exception {
        Integer result = receiveAddressDao.deleteReceiveAddressById(1);
    }

    @Test
    public void changeDefaultReceiveAddress() throws Exception {
        Integer result = receiveAddressDao.changeDefaultReceiveAddress(1, 1);
    }

}