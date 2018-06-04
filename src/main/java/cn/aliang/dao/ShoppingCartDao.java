package cn.aliang.dao;

import cn.aliang.entity.ShoppingCart;
import org.apache.ibatis.annotations.Param;

/**
 * 用户购物车
 * @author J10154
 */
public interface ShoppingCartDao {

    /**
     * 查询用户的购物车状态
     * @param userId
     * @return
     */
    public ShoppingCart queryByUserId(@Param("userId") Integer userId);

}
