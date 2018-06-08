package cn.aliang.dao;

import cn.aliang.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户操作接口
 */
@Repository
public interface UserDao {

    /**
     * 添加用户操作
     * @param user
     * @return
     */
    int insertUser(@Param("user") User user);

    /**
     * 删除用户操作
     * @param user
     * @return
     */
    int deleteUser(@Param("user") User user);

    /**
     * 使用用户名和密码检查用户ID是否存在
     * @param userName
     * @param password
     * @return
     */
    Integer selectUserIdByUserNameAndPassword(@Param("userName") String userName, @Param("password") String password);

    /**
     * 查找对应的用户
     * @param userId
     * @return
     */
    User selectUserInfoByUserId(@Param("userId") Integer userId);

    /**
     * 通过使用邮箱地址查询用户是否存在
     * @param email
     * @return
     */
    int selectUserInfoByEmail(@Param("email") String email);

    /**
     * 验证用户名是否已经被注册
     * @param username
     * @return
     */
    int checkByUsername(@Param("username") String username);

    /**
     * 验证邮箱是否已经被注册
     * @param email
     * @return
     */
    int checkByEmail(@Param("email") String email);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    Integer alterUserInfo(@Param("user") User user);

    /**
     * 查询所有用户的信息
     * @return
     */
    List<User> queryAllUser();
}

