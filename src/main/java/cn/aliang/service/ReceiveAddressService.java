package cn.aliang.service;

import cn.aliang.entity.ReceiveAddress;

import java.util.List;

public interface ReceiveAddressService {

    public List<ReceiveAddress> queryAllAddressByUserId(Integer userId);

}
