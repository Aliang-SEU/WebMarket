package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.Util.State;
import cn.aliang.entity.Good;
import cn.aliang.entity.GoodType;
import cn.aliang.service.GoodService;
import cn.aliang.service.GoodTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class GoodTypeController {

    @Autowired
    private GoodTypeService goodTypeService;

    @RequestMapping(value="/queryGoodType", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<List<GoodType>> queryGoodType(){

        List<GoodType> list = goodTypeService.queryGoodType();
        return new Response<List<GoodType>>(true, "", list);

    }


}
