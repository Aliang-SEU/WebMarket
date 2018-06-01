package cn.aliang.controller;

import cn.aliang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
import cn.aliang.Util.Response;

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
    public Map<String, Boolean> checkUsername(String username){

        Map<String, Boolean> map = new HashMap<>();

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
    public Map<String, Boolean> checkEmail(String email){
        Map<String, Boolean> map = new HashMap<>();

        Boolean result = userService.checkEmail(email);
        if(result == true){
            map.put("valid", false);
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
        if(loginToken == null){
            return new Response<>(false, "");
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
    @RequestMapping("/logOut")
    public String logOut(HttpServletRequest request, HttpServletResponse response){
        userService.logout(request, response);
        return "redirect:/toLogin";
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

        System.out.println(map);
        if (map.get("error") == null) {
            return new Response<Object>(true, "", map);
        } else {
            return new Response<Object>(false, map.get("error").toString());
        }
    }
}
