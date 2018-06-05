package cn.aliang.service.impl;

import cn.aliang.dao.ShoppingOrderDao;
import cn.aliang.entity.ShoppingOrder;
import cn.aliang.service.ShoppingOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author J10154
 */
@Service
public class ShoppingOrderServiceImpl implements ShoppingOrderService{

    @Autowired
    private ShoppingOrderDao shoppingOrderDao;

    @Override
    public boolean createShoppingOrder(ShoppingOrder order) {
        String orderNumber = createOrderNumber(order.getUserId(), System.currentTimeMillis());
        order.setOrderNumber(orderNumber);
        order.setTime(new Date());
        Integer result = shoppingOrderDao.insertShoppingOrder(order);
        if(result != 0) {
            return true;
        }else{
            return false;
        }
    }

    private String createOrderNumber(int userId, long time){
        String orderNumber = "";
        orderNumber += String.format("%010d", userId);
        orderNumber += time;
        return orderNumber;
    }

    @Override
    public List<ShoppingOrder> queryShoppingOrderById(Integer userId) {
        List<ShoppingOrder> list = shoppingOrderDao.queryOrderByUserId(userId);
        return list;
    }
}
