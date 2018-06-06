package cn.aliang.service.impl;

import cn.aliang.dao.ShoppingOrderDao;
import cn.aliang.entity.OrderState;
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

    /**
     * 创建一个订单
     * @param order
     * @return
     */
    @Override
    public boolean createShoppingOrder(ShoppingOrder order) {
        //创建订单号
        String orderNumber = createOrderNumber(order.getUserId(), System.currentTimeMillis());
        order.setOrderNumber(orderNumber);
        order.setCreateTime(new Date());
        order.setTotalPrice(order.getCounts()*order.getGoodPrice());
        order.setFinishTime(order.getCreateTime());
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

    @Override
    public Boolean payOrder(Integer orderId) {
        Integer result = shoppingOrderDao.changeOrderState(orderId, OrderState.TOSEND.getState());
        return result == 1;
    }

    @Override
    public Boolean receiveOrder(Integer orderId) {
        Integer result = shoppingOrderDao.changeOrderState(orderId, OrderState.RECEIVED.getState());
        return result == 1;
    }
}
