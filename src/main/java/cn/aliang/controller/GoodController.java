package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.Good;
import cn.aliang.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class GoodController {

    @Autowired
    private GoodService goodService;

    @RequestMapping(value="/good/{type}", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<List<Good>> queryGoodList(@PathVariable(value = "type") Integer type){

        List<Good> list= goodService.listGoodsByType(type);
        return new Response<List<Good>>(true, "", list);

    }

}
