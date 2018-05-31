package cn.aliang.service.impl;

import cn.aliang.Util.MyUtil;
import cn.aliang.dao.UserDao;
import cn.aliang.entity.User;
import cn.aliang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private JedisPool jedisPool;

    /**
     * 用户注册(暂时不需要做)
     * @param userName
     * @param email
     * @param password
     * @return
     */
    @Override
    public Map<String, Object> register(String userName, String email, String password) {
        Map<String, Object> map = new HashMap<>();
        //首先查询数据库内是否有对应的账号存在
        String passwordMD5 = MyUtil.md5(password);
        Integer userId = userDao.selectUserIdByUserNameAndPassword(userName, passwordMD5);
        if(userId != null){
            map.put("error", "该用户已被注册");
            return map;
        }else{
            userDao.insertUser(new User(userName, passwordMD5, email));
            map.put("success", "注册成功");
        }
        return map;
    }

    /**
     * 用户登录(SSO单点登录模块)
     * @param userName
     * @param password
     * @return
     */
    @Override
    public Map<String, Object> userLogin(String userName, String password, HttpServletResponse response){
        Map<String, Object> map = new HashMap<>();

        // 校验用户名和密码是否正确
        Integer userId = userDao.selectUserIdByUserNameAndPassword(userName, MyUtil.md5(password));
        if (userId == null) {
            map.put("error", "用户名或密码错误");
            return map;
        }

        // 设置登录cookie (利用生成的随机数保证生成的Cookie唯一)，并设置过期时间为10min
        String loginToken = MyUtil.createRandomCode();
        Cookie cookie = new Cookie("loginToken", loginToken);
        cookie.setPath("/");
        cookie.setMaxAge(60 * 60 * 10);
        response.addCookie(cookie);

        // 将token:userId存入redis，并设置过期时间为10min
        Jedis jedis = jedisPool.getResource();
        /**
         * EX seconds -- Set the specified expire time, in seconds.
         * PX milliseconds -- Set the specified expire time, in milliseconds.
         * NX -- Only set the key if it does not already exist.
         * XX -- Only set the key if it already exist.
         */
        jedis.set(loginToken, userId.toString(), "NX", "EX", 60 * 60 * 10);
        jedis.close();

        // 将用户信息返回，存入localStorage
        User user = userDao.selectUserInfoByUserId(userId);
        user.setUserId(userId);
        map.put("userInfo", user);

        return map;
    }

    @Override
    public boolean checkUsername(String username) {
        Integer count = userDao.checkByUsername(username);
        return count == 1;
    }

    @Override
    public boolean checkEmail(String email) {
        Integer count = userDao.checkByEmail(email);
        return count == 1;
    }

    @Override
    public Map<String, Object> queryUserIdByLoginToken(String loginToken) {
        Map<String, Object> map = new HashMap<>();

        //redis查询
        Jedis jedis = jedisPool.getResource();
        String userId = jedis.get(loginToken);

        if(userId != null) {
            map.put("userId", userId);
            User user = userDao.selectUserInfoByUserId(Integer.parseInt(userId));
            map.put("username", user.getUserName());
        }
        return map;
    }

    @Override
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        /**
         * 先清除服务端的cookie
         */
        String loginToken = null;
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("loginToken")) {
                loginToken = cookie.getValue();
                // 从缓存中清除loginToken
                Jedis jedis = jedisPool.getResource();
                jedis.del(loginToken);
                jedis.close();
                break;
            }
        }

        /**
         * 清除客户端的cookie
         */
        Cookie cookie = new Cookie("loginToken", "");
        cookie.setPath("/");
        cookie.setMaxAge(60 * 60 * 10);
        response.addCookie(cookie);

        return loginToken;
    }
}
