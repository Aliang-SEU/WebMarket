package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.Good;
import cn.aliang.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/good")
public class GoodController {

    @Autowired
    private GoodService goodService;

    @RequestMapping(value="/GetResult", method = RequestMethod.POST,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<List<Good>> queryGoodList(@RequestBody Map<String, Integer> map){

        if(map == null || map.size() != 3)
            return new Response<List<Good>>(false, "页面请求错误");
        List<Good> list= goodService.queryGoodsByPage(map.get("type"), map.get("curPage"), map.get("pageSize"));
        return new Response<List<Good>>(true, "", list);

    }

    @RequestMapping(value="/GetResultCount/{type}", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Integer> queryGoodCount(@PathVariable(value = "type") Integer type){

        Integer resultCount= goodService.getGoodCountByType(type);

        return new Response<Integer>(true, "", resultCount);
    }

    @RequestMapping(value="/GoodDetail/{goodId}", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Good> queryGoodDetail(@PathVariable(value="goodId") Integer goodId){
        Good result= goodService.queryGoodDetailById(goodId);
        return new Response<Good>(true, "", result);
    }
    @RequestMapping(value="/GoodDetail", method = RequestMethod.GET)
    public String toGoodDetail(){
        return "good/GoodDetail";
    }
}
