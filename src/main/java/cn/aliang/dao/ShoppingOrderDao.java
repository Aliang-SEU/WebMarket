package cn.aliang.dao;

import cn.aliang.entity.ShoppingOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    /**
     * 更改order状态
     * @param orderId
     * @param state
     * @return
     */
    public Integer changeOrderState(@Param("orderId") Integer orderId,@Param("state") Integer state);
}
