package cn.aliang.service;

import cn.aliang.entity.ShoppingOrder;

import java.util.List;

public interface ShoppingOrderService {

    /**
     * 新建一个订单
     * @param order
     * @return
     */
    public boolean createShoppingOrder(ShoppingOrder order);

    /**
     * 查询用户的订单
     * @param userId
     * @return
     */
    public List<ShoppingOrder> queryShoppingOrderById(Integer userId);

    /**
     * 订单付款
     * @param orderId
     * @return
     */
    public Boolean payOrder(Integer orderId);

    /**
     * 订单收货
     * @param orderId
     * @return
     */
    public Boolean receiveOrder(Integer orderId);

    /**
     * 订单发货
     * @param orderId
     * @return
     */
    public Boolean sendOrder(Integer orderId);

    /**
     * 查询所有的订单
     * @return
     */
    public List<ShoppingOrder> queryAllShoppingOrder();

}
