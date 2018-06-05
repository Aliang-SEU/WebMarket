package cn.aliang.dao;

import cn.aliang.entity.ReceiveAddress;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author J10154
 */
public interface ReceiveAddressDao {

    public List<ReceiveAddress> queryAllReceiveAddressByUserId(@Param("userId") Integer userId);

    public Integer insertReceiveAddress(@Param("receiveAddress") ReceiveAddress receiveAddress);

    public Integer deleteReceiveAddressById(@Param("addressId") Integer addressId);

    public Integer changeDefaultReceiveAddress(@Param("userId") Integer userId, @Param("addressId") Integer addressId);
}

