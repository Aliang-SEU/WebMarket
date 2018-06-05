package cn.aliang.entity;

/**
 * 收货地址
 * @author J10154
 */
public class ReceiveAddress {

    //地址自增ID
    private int addressId;

    //用户ID
    private int userId;

    //收货人姓名
    private String receiveName;

    //电话
    private String phone;

    //收货地址
    private String address;

    //类型
    private int type;

    public ReceiveAddress() {
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getReceiveName() {
        return receiveName;
    }

    public void setReceiveName(String receiveName) {
        this.receiveName = receiveName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "ReceiveAddress{" + "addressId=" + addressId + ", userId=" + userId + ", receiveName='" + receiveName +
               '\'' + ", phone=" + phone + ", address='" + address + '\'' + ", type=" + type + '}';
    }
}
