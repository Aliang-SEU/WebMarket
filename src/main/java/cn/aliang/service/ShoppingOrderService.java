package cn.aliang.service;

import cn.aliang.entity.ShoppingOrder;

import java.util.List;

public interface ShoppingOrderService {

    public boolean createShoppingOrder(ShoppingOrder order);

    public List<ShoppingOrder> queryShoppingOrderById(Integer userId);

    public Boolean payOrder(Integer orderId);

    public Boolean receiveOrder(Integer orderId);

    public Boolean sendOrder(Integer orderId);

    public List<ShoppingOrder> queryAllShoppingOrder();

}
