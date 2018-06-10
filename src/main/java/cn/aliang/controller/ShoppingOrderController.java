package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.ShoppingOrder;
import cn.aliang.service.GoodTypeService;
import cn.aliang.service.ShoppingOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author J10154
 */
@Controller
@RequestMapping("/order")
public class ShoppingOrderController {

    @Autowired
    private ShoppingOrderService shoppingOrderService;
    @Autowired
    private GoodTypeService goodTypeService;

    /**
     * 确认一个订单后新建订单
     * @param order
     * @return
     */
    @RequestMapping(value = "/createOrder", method = RequestMethod.POST)
    public String createOrder(ShoppingOrder order) {
        Boolean result = shoppingOrderService.createShoppingOrder(order);
        if(result == true){
            return "redirect:toOrder";
        }else{
            return "orderError";
        }
    }

    /**
     * 跳转到确认订单页面
     * @param order
     * @return
     */
    @RequestMapping(value = "/confirmOrder", method = RequestMethod.POST)
    public ModelAndView confirmOrder(ShoppingOrder order) {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("confirmOrder");
        mav.addObject("order", order);
        return mav;

    }


    /**
     * 跳转到订单页面
     * @return
     */
    @RequestMapping("/toOrder")
    public String toOrder(){
        return "/toOrder";
    }

    /**
     * 查询所有的订单
     * @param userId
     * @return
     */
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

    /**
     * 支付一个订单
     * @param orderId
     * @return
     */
    @RequestMapping(value="/pay/", method = RequestMethod.GET,
                    produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> payOrder(Integer orderId){
        Boolean result = shoppingOrderService.payOrder(orderId);
        if(result == true){
            return new Response<>(true, "支付成功");
        }else{
            return new Response<>(false, "订单支付失败");
        }
    }

    /**
     * 订单确认收货
     * @param orderId
     * @return
     */
    @RequestMapping(value="/receive/", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> receiveOrder(Integer orderId){
        Boolean result = shoppingOrderService.receiveOrder(orderId);
        if(result == true){
            return new Response<>(true, "订单已收货");
        }else{
            return new Response<>(false, "确认收货失败");
        }
    }

    /**
     * 发货
     * @param orderId
     * @return
     */
    @RequestMapping(value="/sendOrder", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> sendOrder(Integer orderId){
        Boolean result = shoppingOrderService.sendOrder(orderId);
        if(result == true){
            return new Response<>(true, "订单发货成功");
        }else{
            return new Response<>(false, "订单发货失败");
        }
    }
}
