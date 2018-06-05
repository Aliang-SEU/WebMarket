package cn.aliang.entity;

/**
 * 商品信息
 */
public class Good {

    //商品Id
    private int goodId;
    //商品名称
    private String name;
    //商品描述
    private String description;
    //商品关键字
    private String keyWord;
    //商品价格
    private int price;
    //商品数量
    private int counts;
    //商品类型
    private int type;

    public Good() {
    }

    public int getGoodId() {
        return goodId;
    }

    public void setGoodId(int goodId) {
        this.goodId = goodId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Good{" +
                "goodId=" + goodId +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", keyWord='" + keyWord + '\'' +
                ", price=" + price +
                ", counts=" + counts +
                ", type=" + type +
                '}';
    }
}
