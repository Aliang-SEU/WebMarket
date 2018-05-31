package cn.aliang.entity;

/**
 * 用户信息, 对应于数据库的user表
 */

public class User {

    //用户ID 利用mysql自动生成
    private int userId;
    //姓名
    private String userName;
    //真实姓名
    private String realName;
    //密码
    private String password;
    //邮箱
    private String email;
    //手机
    private String phone;
    //地址
    private String address;

    public User() {
    }

    public User(String userName, String password, String email) {
        this.userName = userName;
        this.password = password;
        this.email = email;
    }

    public User(int userId, String userName, String realName, String password, String email, String phone, String address) {
        this.userId = userId;
        this.userName = userName;
        this.realName = realName;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.address = address;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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


    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", realName='" + realName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address;
    }
}
