package cn.aliang.service.impl;

import cn.aliang.Util.MyUtil;
import cn.aliang.Util.ProtoStuffUtil;
import cn.aliang.dao.UserDao;
import cn.aliang.entity.User;
import cn.aliang.service.UserService;
import com.dyuproject.protostuff.LinkedBuffer;
import com.dyuproject.protostuff.ProtostuffIOUtil;
import com.dyuproject.protostuff.runtime.RuntimeSchema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private JedisPool jedisPool;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 用户注册
     *
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
        if (userId != null) {
            map.put("error", "该用户已被注册");
            return map;
        } else {
            userDao.insertUser(new User(userName, passwordMD5, email, new Date()));
            map.put("success", "注册成功");
        }
        return map;
    }

    /**
     * 用户登录(登录模块)
     *
     * @param userName
     * @param password
     * @return
     */
    @Override
    public Map<String, Object> userLogin(String userName, String password, HttpServletResponse response) {

        Map<String, Object> map = new HashMap<>();

        // 校验用户名和密码是否正确
        Integer userId = userDao.selectUserIdByUserNameAndPassword(userName, MyUtil.md5(password));
        if (userId == null) {
            map.put("error", "用户名或密码错误");
            return map;
        }


        // 设置登录cookie (利用生成的随机数保证生成的Cookie唯一)，不设置过期时间 随着浏览器关闭即销毁
        String loginToken = MyUtil.createRandomCode();
        Cookie cookie = new Cookie("loginToken", loginToken);
        cookie.setPath("/");
        cookie.setMaxAge(-1);
        response.addCookie(cookie);

        // 将token:userId存入redis，并设置过期时间
        // 通常需要进行异常验证
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();

            int timeout = 60 * 60 * 1; //过期时间 单位:秒
            //更新loginToken对应的用户Id,并且在服务端设置对应的过期时间
            jedis.set(loginToken, userId.toString(), "NX", "EX", timeout);
            //登录之后取到用户的ID与账户名
            User user = userDao.selectUserInfoByUserId(userId);
            map.put("userInfo", user);

            //用户信息序列化到redis中
            byte[] bytes = ProtoStuffUtil.serialize(user);
            String key = "userId:" + userId.toString();
            jedis.setex(key.getBytes(), 60 * 5, bytes);

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }

        return map;
    }

    /**
     * 用户登录(登录模块)
     *
     * @param userName
     * @param password
     * @return
     */
    @Override
    public Map<String, Object> adminLogin(String userName, String password, HttpServletResponse response) {

        Map<String, Object> map = new HashMap<>();

        // 校验用户名和密码是否正确
        Integer adminId = userDao.selectAdminByUsernameAndPassword(userName, MyUtil.md5(password));
        if (adminId == null) {
            map.put("error", "用户名或密码错误");
            return map;
        }
        int timeout = 60 * 10; //过期时间 单位:秒

        // 设置登录cookie (利用生成的随机数保证生成的Cookie唯一)，不设置过期时间 随着浏览器关闭即销毁
        String adminLoginToken = MyUtil.createRandomCode();
        Cookie cookie = new Cookie("adminLoginToken", adminLoginToken);
        cookie.setPath("/");
        cookie.setMaxAge(-1);
        response.addCookie(cookie);

        // 将token:userId存入redis，并设置过期时间
        // 通常需要进行异常验证
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();
            //更新adminLoginToken对应的用户Id,并且在服务端设置对应的过期时间
            jedis.set(adminLoginToken, adminId.toString(), "NX", "EX", timeout);

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }

        return map;
    }

    /**
     * 管理员登出
     *
     * @param request
     * @param response
     * @return
     */
    @Override
    public Boolean adminLogout(HttpServletRequest request, HttpServletResponse response) {
        /**
         * 先清除服务端的cookie
         */
        try {
            String loginToken = null;
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("adminLoginToken")) {
                    //获取request内的loginToken
                    loginToken = cookie.getValue();
                    //获取redis连接
                    Jedis jedis = null;
                    try {
                        jedis = jedisPool.getResource();
                        //删除loginToken
                        jedis.del(loginToken);
                    } catch (Exception e) {
                        logger.error(e.getMessage(), e);
                    } finally {
                        if (jedis != null) {
                            jedis.close();
                        }
                    }
                    break;
                }
            }
            /**
             * 清除客户端的cookie
             */
            Cookie cookie = new Cookie("adminLoginToken", null);
            cookie.setPath("/");
            cookie.setMaxAge(-1);
            response.addCookie(cookie);
            return true;

        } catch (Exception e) {
            return false;
        }
    }

    /**
     * 支付的时候使用
     *
     * @param username
     * @param password
     * @return
     */
    @Override
    public Boolean checkPassword(String username, String password) {

        Integer userId = userDao.selectUserIdByUserNameAndPassword(username, MyUtil.md5(password));
        if (userId != null) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * ajax 校验用户名是否已经被注册
     *
     * @param username
     * @return
     */
    @Override
    public boolean checkUsername(String username) {
        Integer count = userDao.checkByUsername(username);
        return count == 1;
    }

    /**
     * ajax校验邮箱是否已经被注册
     *
     * @param email
     * @return
     */
    @Override
    public Map<String, Object> checkEmail(String email) {
        /**
         * 首先验证email格式
         */

        Map<String, Object> map = new HashMap<>();
        boolean flag;
        try {
            String check = "^([a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$)";
            Pattern regex = Pattern.compile(check);
            Matcher matcher = regex.matcher(email);
            flag = matcher.matches();
        } catch (Exception e) {
            flag = false;
        }
        /**
         * 邮箱格式不正确
         */
        flag = true; //由于bootstrapValidator插件的缺陷 这里不得不 不使用后端验证 bug点
        if (flag == false) {
            map.put("error", "邮箱格式不正确");
        } else {
            /**
             * 验证邮箱是否已经被注册过
             */
            Integer count = userDao.checkByEmail(email);
            if (count == 1) {
                map.put("error", "邮箱已经被注册");
            }
        }
        return map;
    }

    /**
     * 根据loginToken查询对应的用户Id
     *
     * @param loginToken
     * @return
     */
    @Override
    public Map<String, Object> queryUserIdByLoginToken(String loginToken) {
        Map<String, Object> map = new HashMap<>();

        //redis查询
        Jedis jedis = null;
        try{
            jedis = jedisPool.getResource();
            String userId = jedis.get(loginToken);
            if (userId != null) {
                map.put("userId", userId);
            } else {
                map.put("error", "用户已经登出");
            }
        }catch(Exception e){
            logger.error(e.getMessage(), e);
        }finally {
            if(jedis != null){
                jedis.close();
            }
        }
        return map;
    }

    /**
     * 通过loginToken查询用户的信息
     *
     * @param loginToken
     * @return
     */
    @Override
    public Map<String, Object> queryUserInfoByLoginToken(String loginToken) {
        Map<String, Object> map = new HashMap<>();

        //redis查询 用户的Id
        Jedis jedis = null;
        String userId = null;
        try {
            jedis = jedisPool.getResource();

            userId = jedis.get(loginToken);
            if (userId != null) {
                String key = "userId:" + userId;
                byte[] bytes = jedis.get(key.getBytes());
                //redis用户信息过期
                if (bytes != null) {
                    //空对象
                    User user = (User) ProtoStuffUtil.deserialize(bytes, User.class);
                    //user 被反序列化
                    map.put("UserInfo", user);
                } else {
                    User user = userDao.selectUserInfoByUserId(Integer.parseInt(userId));
                    byte[] userByte = ProtoStuffUtil.serialize(user);
                    jedis.setex(key.getBytes(), 60 * 5, userByte);
                    map.put("UserInfo", user);
                }
            } else {
                map.put("error", "未找到用户信息");
            }

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return map;
    }

    /**
     * 用户登出
     *
     * @param request
     * @param response
     * @return
     */
    @Override
    public Boolean logout(HttpServletRequest request, HttpServletResponse response) {
        /**
         * 先清除服务端的cookie
         */
        try {
            String loginToken = null;
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("loginToken")) {
                    //获取request内的loginToken
                    loginToken = cookie.getValue();
                    //获取redis连接
                    Jedis jedis = null;
                    try {
                        jedis = jedisPool.getResource();

                        //从redis内查找对应的userId
                        String userId = jedis.get(loginToken);
                        if (userId != null) {
                            String key = "userId:" + userId;
                            //删除userInfo
                            jedis.del(key.getBytes());
                        }
                        //删除loginToken
                        jedis.del(loginToken);

                    } catch (Exception e) {
                        logger.error(e.getMessage(), e);
                    } finally {
                        if (jedis != null) {
                            jedis.close();
                        }
                    }
                    break;
                }
            }
            /**
             * 清除客户端的cookie
             */
            Cookie cookie = new Cookie("loginToken", null);
            cookie.setPath("/");
            cookie.setMaxAge(-1);
            response.addCookie(cookie);
            return true;

        } catch (Exception e) {
            return false;
        }
    }

    /**
     * 修改用户的信息
     *
     * @param user
     * @return
     */
    @Override
    public boolean alterUserInfo(User user) {

        Integer result = userDao.alterUserInfo(user);

        if (result != 0) {
            //修改成功 将用户的信息放到redis内
            Jedis jedis = null;
            try {
                jedis = jedisPool.getResource();
                String key = "userId:" + user.getUserId();
                //信息被更新 则设置过期
                jedis.expire(key, 0);
            } catch (Exception e) {
                logger.error(e.getMessage(), e);
            } finally {
                if (jedis != null) {
                    jedis.close();
                }
            }
            return true;
        } else {
            return false;
        }
    }


    /**
     * 查询所有用户的信息
     *
     * @return
     */
    @Override
    public List<User> queryAllUser() {
        List<User> list = userDao.queryAllUser();
        return list;
    }
}
