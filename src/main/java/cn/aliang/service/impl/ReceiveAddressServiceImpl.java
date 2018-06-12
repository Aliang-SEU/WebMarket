package cn.aliang.service.impl;

import cn.aliang.dao.ReceiveAddressDao;
import cn.aliang.entity.ReceiveAddress;
import cn.aliang.service.ReceiveAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author J10154
 */
@Service
public class ReceiveAddressServiceImpl implements ReceiveAddressService {

    @Autowired
    private ReceiveAddressDao receiveAddressDao;

    /**
     * 查询用户的收货地址
     * @param userId
     * @return
     */
    @Override
    public List<ReceiveAddress> queryAllAddressByUserId(Integer userId) {
        List<ReceiveAddress> list = receiveAddressDao.queryAllReceiveAddressByUserId(userId);
        return list;
    }

    /**
     * 删除一个收货地址
     * @param addressId
     * @return
     */
    @Override
    public Boolean deleteAddressById(Integer addressId) {
        Integer result = receiveAddressDao.deleteReceiveAddressById(addressId);
        return result == 1;
    }

    /**
     * 新增一个收货地址
     * @param receiveAddress
     * @return
     */
    @Override
    public Boolean insertAddress(ReceiveAddress receiveAddress) {
        Integer result = receiveAddressDao.insertReceiveAddress(receiveAddress);
        return result == 1;
    }
}
