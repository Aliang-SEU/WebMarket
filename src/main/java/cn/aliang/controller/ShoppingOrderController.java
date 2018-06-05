package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.ShoppingOrder;
import cn.aliang.service.GoodTypeService;
import cn.aliang.service.ShoppingOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
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

    @RequestMapping(value = "/createOrder", method = RequestMethod.POST)
    public String createOrder(@RequestBody ShoppingOrder order) {
        return "";
    }

    @RequestMapping(value = "/confirmOrder", method = RequestMethod.POST)
    public ModelAndView confirmOrder(ShoppingOrder order, HttpSession session) {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("confirmOrder");
        mav.addObject("order", order);
        return mav;

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
