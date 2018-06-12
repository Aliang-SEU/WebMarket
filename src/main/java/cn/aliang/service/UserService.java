package cn.aliang.service;

import cn.aliang.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public interface UserService {

    /**
     * 用户注册
     * @param username
     * @param email
     * @param password
     * @return
     */
    public Map<String, Object> register(String username, String email, String password);

    /**
     * 用户登录(SSO单点登录模块)
     * @param userName
     * @param password
     * @return
     */
    public Map<String, Object> userLogin(String userName, String password, HttpServletResponse response);


    /**
     * 管理员登录
     * @param userName
     * @param password
     * @param response
     * @return
     */
    public Map<String, Object> adminLogin(String userName, String password, HttpServletResponse response);

    /**
     * 管理员注销
     * @param request
     * @param response
     * @return
     */
    public Boolean adminLogout(HttpServletRequest request, HttpServletResponse response);
        /**
         * 校验密码
         * @param username
         * @param password
         * @return
         */
    public Boolean checkPassword(String username, String password);

    /**
     * 通过loginToken到redis缓存当中查询用户的ID信息
     * @param loginToken
     * @return
     */
    public Map<String, Object> queryUserIdByLoginToken(String loginToken);

    /**
     * 注销功能
     * @param request
     * @param response
     * @return
     */
    public Boolean logout(HttpServletRequest request, HttpServletResponse response);

    /**
     * 验证用户的姓名
     * @param username
     * @return
     */
    public boolean checkUsername(String username);

    /**
     * 验证用户的邮箱
     * @param email
     * @return
     */
    public Map<String, Object> checkEmail(String email);

    /**
     * 获取用户信息
     * @param loginToken
     * @return
     */
    public Map<String, Object> queryUserInfoByLoginToken(String loginToken);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    public boolean alterUserInfo(User user);

    /**
     * 查询所有用户的信息
     * @return
     */
    public List<User> queryAllUser();

}
