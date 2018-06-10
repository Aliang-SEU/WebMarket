package cn.aliang.dao;

import cn.aliang.entity.ReceiveAddress;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author J10154
 */
public interface ReceiveAddressDao {

    //查询对应用户的地址
    public List<ReceiveAddress> queryAllReceiveAddressByUserId(@Param("userId") Integer userId);

    //增加一个用户收货地址
    public Integer insertReceiveAddress(@Param("receiveAddress") ReceiveAddress receiveAddress);

    //删除一个用户的收货地址
    public Integer deleteReceiveAddressById(@Param("addressId") Integer addressId);

    //改变收获地址是否为默认地址
    public Integer changeDefaultReceiveAddress(@Param("userId") Integer userId, @Param("addressId") Integer addressId);
}

