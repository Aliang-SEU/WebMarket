package cn.aliang.entity;


import com.fasterxml.jackson.databind.ObjectMapper;

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
    private Date createTime;

    //订单完成时间
    private Date finishTime;

    //订单总价
    private int totalPrice;

    //订单状态
    private int orderState;

    //商品数量
    private int counts;

    //收货地址
    private String orderAddress;

    public ShoppingOrder() {
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
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

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public int getGoodPrice() {
        return goodPrice;
    }

    public void setGoodPrice(int goodPrice) {
        this.goodPrice = goodPrice;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getOrderState() {
        return orderState;
    }

    public void setOrderState(int orderState) {
        this.orderState = orderState;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    @Override
    public String toString() {
        try{
            return new ObjectMapper().writeValueAsString(this);
        }catch (Exception e){
            return "";
        }
    }

}
