package cn.aliang.Util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.UUID;

public class MyUtil {

    /**
     * MD5加密工具
     * @param plainText
     * @return
     */
    public static String md5(String plainText) {
        byte[] secretBytes = null;
        try {
            secretBytes = MessageDigest.getInstance("md5").digest(plainText.getBytes());
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("没有md5这个算法！");
        }
        String md5code = new BigInteger(1, secretBytes).toString(16);// 16进制数字
        // 如果生成数字未满32位，需要前面补0
        for (int i = 0; i < 32 - md5code.length(); i++) {
            md5code = "0" + md5code;
        }
        return md5code;
    }

    /**
     * 利用当前时间生成一个随机码
     * @return
     */
    public static String createRandomCode() {
        /**
         * UUID.randomUUID().toString()是javaJDK提供的一个自动生成主键的方法。
         * UUID(Universally Unique Identifier)全局唯一标识符,是指在一台机器上生成的数字，
         * 它保证对在同一时空中的所有机器都是唯一的，是由一个十六位的数字组成,表现出来的形式。
         * 由以下几部分的组合：当前日期和时间(UUID的第一个部分与时间有关，
         * 如果你在生成一个UUID之后，过几秒又生成一个UUID，则第一个部分不同，其余相同)，
         * 时钟序列，全局唯一的IEEE机器识别号（如果有网卡，从网卡获得，没有网卡以其他方式获得），
         * UUID的唯一缺陷在于生成的结果串会比较长。
         */
        return new Date().getTime() + UUID.randomUUID().toString().replace("-", "");
    }
}
