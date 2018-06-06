package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.ReceiveAddress;
import cn.aliang.service.ReceiveAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/")
public class ReceiveAddressController {

    @Autowired
    private ReceiveAddressService receiveAddressService;


    @RequestMapping(value = "/queryAddress/{userId}", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> confirmOrder(@PathVariable("userId") Integer userId, HttpSession session) {

        List<ReceiveAddress> list = receiveAddressService.queryAllAddressByUserId(userId);
        return new Response<Object>(true,"", list);

    }

    @RequestMapping(value = "/deleteAddress/{addressId}", method = RequestMethod.GET,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> deleteAddress(@PathVariable("addressId") Integer addressId, HttpSession session) {

        Boolean result = receiveAddressService.deleteAddressById(addressId);
        return new Response<Object>(result,"");

    }

    @RequestMapping(value = "/addAddress", method = RequestMethod.POST,
            produces = {"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> addAddress(@RequestBody  ReceiveAddress receiveAddress){
        boolean result = receiveAddressService.insertAddress(receiveAddress);
        return new Response<Object>(result, "");
    }
}
