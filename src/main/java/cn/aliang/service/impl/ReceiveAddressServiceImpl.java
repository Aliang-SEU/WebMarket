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

    @Override
    public List<ReceiveAddress> queryAllAddressByUserId(Integer userId) {
        List<ReceiveAddress> list = receiveAddressDao.queryAllReceiveAddressByUserId(userId);
        return list;
    }
}
