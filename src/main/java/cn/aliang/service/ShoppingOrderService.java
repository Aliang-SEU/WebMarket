package cn.aliang.service;

import cn.aliang.entity.ShoppingOrder;

import java.util.List;

public interface ShoppingOrderService {

    public boolean createShoppingOrder(ShoppingOrder order);

    public List<ShoppingOrder> queryShoppingOrderById(Integer userId);
}