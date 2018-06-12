package cn.aliang.service;

import cn.aliang.entity.ReceiveAddress;

import java.util.List;

public interface ReceiveAddressService {

    /**
     * 查询用户所有的收货地址
     * @param userId
     * @return
     */
    public List<ReceiveAddress> queryAllAddressByUserId(Integer userId);

    /**
     * 删除对应的收货地址
     * @param addressId
     * @return
     */
    public Boolean deleteAddressById(Integer addressId);

    /**
     * 新增一个收货地址
     * @param receiveAddress
     * @return
     */
    public Boolean insertAddress(ReceiveAddress receiveAddress);
}
