package cn.aliang.dao;

import cn.aliang.entity.ShoppingOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author J10154
 */
@Repository
public interface ShoppingOrderDao {

    /**
     * 根据用户ID查询用户的订单
     * @param userId
     * @return
     */
    public List<ShoppingOrder> queryOrderByUserId(@Param("userId") Integer userId);

    /**
     * 插入一个订单
     * @param shoppingOrder
     * @return
     */
    public Integer insertShoppingOrder(@Param("shoppingOrder") ShoppingOrder shoppingOrder);

    //public Map<String, Object> queryAllOrderByUserId(@Param("userId") Integer userId);
}
