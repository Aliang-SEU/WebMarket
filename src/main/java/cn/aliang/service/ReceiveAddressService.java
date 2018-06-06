package cn.aliang.service;

import cn.aliang.entity.ReceiveAddress;

import java.util.List;

public interface ReceiveAddressService {

    public List<ReceiveAddress> queryAllAddressByUserId(Integer userId);

    public Boolean deleteAddressById(Integer addressId);

    public Boolean insertAddress(ReceiveAddress receiveAddress);
}
