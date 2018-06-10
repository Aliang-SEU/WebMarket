package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.GoodType;
import cn.aliang.service.GoodTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/")
public class GoodTypeController {

    @Autowired
    private GoodTypeService goodTypeService;

    /**
     * 查询商品的分类信息
     * @return
     */
    @RequestMapping(value="/queryGoodType", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<List<GoodType>> queryGoodType(){

        List<GoodType> list = goodTypeService.queryGoodType();
        return new Response<List<GoodType>>(true, "", list);

    }

    /**
     * 查询对应类型的商品的名称
     * @param type
     * @return
     */
    @RequestMapping(value="/queryGoodType/{type}", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<String> queryGoodType(@PathVariable(value = "type") Integer type){

        String typeNameByType = goodTypeService.queryGoodTypeNameByType(type);
        return new Response<String>(true, "", typeNameByType);

    }


}
