package cn.aliang.entity;

public class ShoppingCart {

    //用户ID
    private int userId;

    //商品ID
    private int goodId;

    //商品价格
    private int goodPrice;

    //商品购买的数量
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
        return "ShoppingCart{" + "userId=" + userId + ", goodId=" + goodId + ", goodPrice=" + goodPrice + ", counts=" +
               counts + '}';
    }
}
