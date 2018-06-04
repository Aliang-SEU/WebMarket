package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.Good;
import cn.aliang.entity.ShoppingOrder;
import cn.aliang.service.ShoppingOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * @author J10154
 */
@Controller
@RequestMapping("/order")
public class ShoppingOrderController {

    @Autowired
    private ShoppingOrderService shoppingOrderService;

    @RequestMapping(value = "/createOrder", method = RequestMethod.POST, produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> createOrder(@RequestBody ShoppingOrder order) {
        Boolean result = shoppingOrderService.createShoppingOrder(order);
        if(result == true){
            return new Response<>(true, "订单创建成功");
        }else{
            return new Response<>(false, "订单创建失败");
        }
    }

    @RequestMapping("/toOrder")
    public String toOrder(){
        return "/toOrder";
    }

    @RequestMapping(value = "/queryAllOrder/{userId}", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<List<ShoppingOrder>> queryAllOrder(@PathVariable(value="userId") Integer userId){

        List<ShoppingOrder> list = shoppingOrderService.queryShoppingOrderById(userId);
        if(list != null && list.size() != 0) {
            return new Response<>(true, "", list);
        }else{
            return new Response<>(false, "您暂时没有订单");
        }
    }
}
