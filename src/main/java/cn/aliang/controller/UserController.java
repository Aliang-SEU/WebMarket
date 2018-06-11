package cn.aliang.controller;

import cn.aliang.entity.User;
import cn.aliang.service.UserService;
import cn.aliang.Util.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * @author: aliang
 */
@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 返回到登录接口
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "toLogin";
    }

    /**
     * 用户注册接口
     * @return
     */
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "toRegister";
    }

    /**
     * 用户注册
     * @param username
     * @param email
     * @param password
     * @return
     */
    @RequestMapping(value="/register", method=RequestMethod.POST,
            produces={"application/json;charset=UTF-8"})
    @ResponseBody
    public Response<Object> userRegister(String username, String email, String password) {
        Map<String, Object> map = new HashMap<>();
        if(username == null || password == null || username.equals("") || password.equals("")){
            map.put("error", "参数不合法！");
            return new Response<>(false, map.get("error").toString());
        }
        map = userService.register(username, email, password);
        if(map.get("error") == null){
            return new Response<Object>(true, "注册成功");
        }else {
            return new Response<Object>(false, map.get("error").toString());
        }
    }

    /**
     * 验证用户的用户名是否存在
     * @param username
     * @return
     */
    @RequestMapping(value = "/checkUsername", method = RequestMethod.GET,
                produces = {"application/json; charset=UTF-8"})
    @ResponseBody
    public Map<String, Object> checkUsername(String username){

        Map<String, Object> map = new HashMap<>();

        if(username == null || username.equals("")){
            map.put("valid", false);
            return map;
        }else{
            Boolean result = userService.checkUsername(username);
            //用户已注册
            if(result == true){
                map.put("valid", false);
                return map;
            }else{
                map.put("valid", true);
                return map;
            }
        }
    }

    /**
     * 验证邮箱是否已被注册
     * @param email
     * @return
     */
    @RequestMapping(value="/checkEmail", method={RequestMethod.GET},
            produces = {"application/json; charset=UTF-8"})
    @ResponseBody
    public Map<String, Object> checkEmail(String email){
        Map<String, Object> map = new HashMap<>();

        Map<String, Object> queryResult = userService.checkEmail(email);
        if(queryResult.get("error") != null){
            map.put("valid", false);
            map.put("error", queryResult.get("error"));
            return map;
        }else{
            map.put("valid", true);
            return map;
        }
    }
    /**
     * 查询用户的登录状态
     * @param loginToken
     * @return
     */
    @RequestMapping(value="/getLoginState", method=RequestMethod.GET,
            produces={"application/json;charset=UTF-8;"})
    @ResponseBody
    public Response<Object> getLoginState(String loginToken){
        if(loginToken == null || !StringUtils.hasText(loginToken) || loginToken.equals("\"\"")){
            return new Response<>(false, "用户未登录");
        }else{
            Map<String, Object> map = userService.queryUserIdByLoginToken(loginToken);
            if(map.get("userId") != null){
                return new Response<Object>(true, "在线", map);
            }else {
                return new Response<Object>(false, "登录失效");
            }
        }
    }

    /**
     * 用户注销
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/logOut", method = RequestMethod.GET)
    public String logOut(HttpServletRequest request, HttpServletResponse response){
        Boolean result = userService.logout(request, response);
        if(result == true){
            //注销成功，跳转到登录界面
            return "redirect:/toLogin";
        }else{
            //应该不会失败，跳转到登录界面
            return "redirect:/toLogin";
        }
    }

    /**
     * 用户登录
     * @param username
     * @param password
     * @param response
     * @return
     */
    @RequestMapping(value="/login", method=RequestMethod.POST,
            produces={"application/json;charset=UTF-8"})
    @ResponseBody
    public Response<Object> userLogin(String username, String password, HttpServletResponse response){
        Map<String, Object> map = new HashMap<>();
        /*
            检验参数的正确性
         */
        if(username == null || password == null){
            map.put("error", "参数不合法！");
            return new Response<>(false, map.get("error").toString());
        }
        map = userService.userLogin(username, password, response);

        if (map.get("error") == null) {
            return new Response<Object>(true, "", map);
        } else {
            return new Response<Object>(false, map.get("error").toString());
        }
    }

    /**
     * 校验密码
     * @param userInfo
     * @return
     */
    @RequestMapping(value="/checkPassword", method=RequestMethod.POST,
            produces={"application/json;charset=UTF-8"})
    @ResponseBody
    public Response<Object> checkPassword(@RequestBody Map<String, String> userInfo){
        Map<String, Object> map = new HashMap<>();
        /*
            检验参数的正确性
         */
        String username = userInfo.get("username");
        String password = userInfo.get("password");
        if(username == null || password == null){
            map.put("error", "用户名或密码不合法！");
            return new Response<>(false, map.get("error").toString());
        }
        Boolean result = userService.checkPassword(username, password);

        if (result == true) {
            return new Response<Object>(true, "密码验证成功");
        } else {
            return new Response<Object>(false, "密码验证失败");
        }
    }

    /**
     * 返回修改信息的页面
     * @return
     */
    @RequestMapping(value = "/alterData", method = RequestMethod.GET)
    public String alterData(){
        return "alterData";
    }

    /**
     *  获取用户的个人信息
     * @param map
     * @return
     */
    @RequestMapping(value = "/getUserData", method = RequestMethod.POST,
            produces={"application/json;charset=UTF-8"})
    @ResponseBody
    public Response<Object> getUserData(@RequestBody Map<String, String> map){
        String loginToken = map.get("loginToken");
        Map<String, Object> result= userService.queryUserInfoByLoginToken(loginToken);
        if(result.get("error") != null){
            return new Response<Object>(false, result.get("error").toString());
        }else{
            return new Response<Object>(true, "", result.get("UserInfo"));
        }
    }

    /**
     * 修改用户的信息
     * @param user
     * @return
     */
    @RequestMapping(value = "/alterUserData", method = RequestMethod.POST,
            produces={"application/json;charset=UTF-8"})
    @ResponseBody
    public Response<Object> alterUserData(@RequestBody User user){
        boolean result = userService.alterUserInfo(user);
        if(result == true){
            return new Response<Object>(true, "资料更新成功");
        }else{
            return new Response<Object>(false, "资料更改失败");
        }
    }


}
