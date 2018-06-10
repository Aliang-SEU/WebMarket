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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
@RequestMapping("/adminIndex")
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

    /**
     * 查询所有用户的信息
     * @return
     */
    @RequestMapping(value = "/queryUserInfo", method = RequestMethod.GET,
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
    @RequestMapping(value = "/queryAllGood", method = RequestMethod.GET,
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
     * 上传商品的图片
     * @param file
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/uploadFile",
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> uploadFile(MultipartFile file) throws Exception {
           return new Response<Object>(true, "");
    }

    /**
     * 管理员登录
     * @return
     */
    @RequestMapping(value = "/adminLogin",
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> adminLogin() {
        return new Response<Object>(true, "");
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
