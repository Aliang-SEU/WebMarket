package cn.aliang.entity;

public class GoodType {

    //商品类型编号
    private int type;

    //商品类型名称
    private String name;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "GoodType{" +
                "type=" + type +
                ", name='" + name + '\'' +
                '}';
    }
}
