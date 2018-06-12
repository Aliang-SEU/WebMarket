package cn.aliang.service.impl;

import cn.aliang.Util.SnowflakeIdWorker;
import cn.aliang.dao.GoodDao;
import cn.aliang.dao.ShoppingOrderDao;
import cn.aliang.entity.Good;
import cn.aliang.entity.OrderState;
import cn.aliang.entity.ShoppingOrder;
import cn.aliang.service.ShoppingOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author J10154
 */
@Service
public class ShoppingOrderServiceImpl implements ShoppingOrderService{

    @Autowired
    private ShoppingOrderDao shoppingOrderDao;

    @Autowired
    private GoodDao goodDao;

    //唯一订单号生成
    SnowflakeIdWorker idWorker = new SnowflakeIdWorker(0, 0);
    /**
     * 创建一个订单
     * @param order
     * @return
     */
    @Override
    public boolean createShoppingOrder(ShoppingOrder order) {
        //创建订单号
        String orderNumber = createOrderNumber(order.getUserId());
        order.setOrderNumber(idWorker.nextId());
        order.setCreateTime(new Date());
        order.setTotalPrice(order.getCounts()*order.getGoodPrice());
        order.setFinishTime(order.getCreateTime());
        /*
            首先需要检查库存的情况
         */
        Integer goodNumber = goodDao.reduceGoodNumberByOrder(order);
        Good good = goodDao.getGoodDetailById(order.getGoodId());
        if(goodNumber <= 0)
            return false;
        else{
            /**
             * 这里需要保证数据的一致性
             */
            Integer result = shoppingOrderDao.insertShoppingOrder(order, good);
            result += shoppingOrderDao.insertOrderDetail(order, good);

            return result != 0;
        }
    }

    /**
     * 根据用户的ID生成订单号(15位)
     * @param userId
     * @return
     */
    public String createOrderNumber(int userId){
        String dbInfo = String.valueOf((userId / 10) % 8 + 1);
        String tableInfo = String.valueOf(userId % 10);
        return dbInfo + tableInfo + System.currentTimeMillis();
    }

    /**
     * 根据订单号查询订单的信息
     * @param userId
     * @return
     */
    @Override
    public List<ShoppingOrder> queryShoppingOrderById(Integer userId) {
        List<ShoppingOrder> list = shoppingOrderDao.queryOrderByUserId(userId);
        return list;
    }

    /**
     * 支付订单
     * @param orderId
     * @return
     */
    @Override
    public Boolean payOrder(Integer orderId) {
        Integer result = shoppingOrderDao.changeOrderState(orderId, OrderState.TOSEND.getState());
        return result == 1;
    }

    /**
     * 接收订单
     * @param orderId
     * @return
     */
    @Override
    public Boolean sendOrder(Integer orderId) {
        Integer result = shoppingOrderDao.changeOrderState(orderId, OrderState.TRANSPORTING.getState());
        return result == 1;
    }

    /**
     * 接收订单
     * @param orderId
     * @return
     */
    @Override
    public Boolean receiveOrder(Integer orderId) {
        Integer result = shoppingOrderDao.changeOrderState(orderId, OrderState.RECEIVED.getState());
        return result == 1;
    }

    /**
     * 查询所有的订单信息
     * @return
     */
    @Override
    public List<ShoppingOrder> queryAllShoppingOrder() {
        List<ShoppingOrder> list = shoppingOrderDao.queryAllShoppingOrder();
        return list;
    }
}
