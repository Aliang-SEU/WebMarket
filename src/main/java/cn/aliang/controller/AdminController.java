package cn.aliang.controller;


import cn.aliang.Util.Response;
import cn.aliang.entity.ShoppingOrder;
import cn.aliang.entity.User;
import cn.aliang.service.ShoppingOrderService;
import cn.aliang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/adminIndex")
public class AdminController {

    @Autowired
    private ShoppingOrderService shoppingOrderService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/queryShoppingOrder", method = RequestMethod.GET,
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

    @RequestMapping(value = "/queryUserInfo", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> queryUserInfo(){
        List<User> list =  userService.queryAllUser();
        if(list != null && !list.isEmpty()){
            return new Response<Object>(true, "", list);
        }else{
            return new Response<Object>(false, "还没有订单");
        }
    }
}
