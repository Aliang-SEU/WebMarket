package cn.aliang.entity;

import java.sql.Date;

public class ShoppingOrder {

    //用户Id
    private int userId;

    //商品Id
    private int goodId;

    //订单下达时间
    private Date time;

    //订单状态
    private int orderState;

    //订单价格
    private int goodPrice;

    //订单数量
    private int counts;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getGoodId() {
        return goodId;
    }

    public void setGoodId(int goodId) {
        this.goodId = goodId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getOrderState() {
        return orderState;
    }

    public void setOrderState(int orderState) {
        this.orderState = orderState;
    }

    public int getGoodPrice() {
        return goodPrice;
    }

    public void setGoodPrice(int goodPrice) {
        this.goodPrice = goodPrice;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    @Override
    public String toString() {
        return "ShoppingOrder{" + "userId=" + userId + ", goodId=" + goodId + ", time=" + time + ", orderState=" +
               orderState + ", goodPrice=" + goodPrice + ", counts=" + counts + '}';
    }
}
