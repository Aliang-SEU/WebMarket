package cn.aliang.controller;


import cn.aliang.Util.Response;
import cn.aliang.entity.Good;
import cn.aliang.entity.ShoppingOrder;
import cn.aliang.entity.User;
import cn.aliang.service.GoodService;
import cn.aliang.service.ShoppingOrderService;
import cn.aliang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class AdminController {

    @Autowired
    private ShoppingOrderService shoppingOrderService;

    @Autowired
    private UserService userService;

    @Autowired
    private GoodService goodService;

    /**
     * 查询所有的订单
     * @return
     */
    @RequestMapping(value = "/adminIndex/queryShoppingOrder", method = RequestMethod.GET,
                    produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> queryShoppingOrder(){
        List<ShoppingOrder> list =  shoppingOrderService.queryAllShoppingOrder();
        if(list != null && !list.isEmpty()){
            return new Response<Object>(true, "", list);
        }else{
            return new Response<Object>(false, "还没有订单");
        }
    }

    /**
     * 查询所有用户的信息
     * @return
     */
    @RequestMapping(value = "/adminIndex/queryUserInfo", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> queryUserInfo(){
        List<User> list =  userService.queryAllUser();
        if(list != null && !list.isEmpty()){
            return new Response<Object>(true, "", list);
        }else{
            return new Response<Object>(false, "还没有商品");
        }
    }

    /**
     * 查询所有的商品
     * @return
     */
    @RequestMapping(value = "/adminIndex/queryAllGood", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> queryAllGood(){
        List<Good> list =  goodService.queryAllGood();
        if(list != null && !list.isEmpty()){
            return new Response<Object>(true, "", list);
        }else{
            return new Response<Object>(false, "还没有商品");
        }
    }

    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
    public String adminLogin() {
        return "adminLogin";
    }

    /**
     * 管理员登录
     * @return
     */
    @RequestMapping(value = "/adminLogin", method = RequestMethod.POST,
                    produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public Response<Object> adminLogin(@RequestBody Map<String, String> userMap,
                                        HttpServletResponse response) {
        String username = userMap.get("username");
        String password = userMap.get("password");
        if(username == null || password == null ||
                username.equals("") || password.equals("")){
            return new Response<>(false, "用户名或密码输入有误");
        }
        Map<String, Object> map = userService.adminLogin(username, password, response);

        if(map.get("error") != null){
            return new Response<>(false, map.get("error").toString());
        }else {
            return new Response<>(true, "");
        }

    }

    /**
     * 管理员注销
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/adminLogOut", method = RequestMethod.GET)
    public String adminLogOut(HttpServletRequest request, HttpServletResponse response){
        Boolean result = userService.adminLogout(request, response);
        if(result == true){
            //注销成功，跳转到登录界面
            return "redirect:/adminLogin";
        }else{
            //应该不会失败，跳转到登录界面
            return "redirect:/adminLogin";
        }
    }

    /**
     * 进入到管理员界面
     * @return
     */
    @RequestMapping("/adminIndex")
    public String adminIndex(){
        return "adminIndex";
    }
}
