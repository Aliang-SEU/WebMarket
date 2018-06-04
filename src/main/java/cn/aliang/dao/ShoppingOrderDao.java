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
    public List<ShoppingOrder>  queryOrderByUserId(@Param("userId") Integer userId);

}
