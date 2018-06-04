package cn.aliang.entity;


import java.util.Date;

public class ShoppingOrder {

    //订单Id
    private int orderId;

    //订单号
    private String orderNumber;

    //用户Id
    private int userId;

    //商品Id
    private int goodId;

    //商品名称
    private String goodName;

    //商品名称价格
    private int goodPrice;

    //订单下达时间
    private Date time;

    //订单状态
    private int orderState;

    //订单数量
    private int counts;


    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }


    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

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
        return "ShoppingOrder{" + "orderId=" + orderId + ", orderNumber='" + orderNumber + '\'' + ", userId=" + userId +
               ", goodId=" + goodId + ", goodName='" + goodName + '\'' + ", goodPrice=" + goodPrice + ", time=" + time +
               ", orderState=" + orderState + ", counts=" + counts + '}';
    }
}
