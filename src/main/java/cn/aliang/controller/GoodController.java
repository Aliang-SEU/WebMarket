package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.Good;
import cn.aliang.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author hzl
 */
@Controller
@RequestMapping("/good")
public class GoodController {

    @Autowired
    private GoodService goodService;

    /**
     * 根据选定的页数来查询对应的商品信息
     * @param map
     * @return
     */
    @RequestMapping(value="/GetResult", method = RequestMethod.POST,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<List<Good>> queryGoodList(@RequestBody Map<String, Integer> map){

        if(map == null) {
            return new Response<List<Good>>(false, "页面请求错误");
        }
        List<Good> list= goodService.queryGoodsByPage(map.get("type"), map.get("curPage"), map.get("pageSize"));
        return new Response<List<Good>>(true, "", list);

    }

    /**
     * 查询商品的总数量，用来给分页做准备
     * @param type
     * @return
     */
    @RequestMapping(value="/GetResultCount/{type}", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Integer> queryGoodCount(@PathVariable(value = "type") Integer type){

        Integer resultCount= goodService.getGoodCountByType(type);

        return new Response<Integer>(true, "", resultCount);
    }

    @RequestMapping(value="/GetGoodCount", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Integer> queryGoodCount(){

        Integer count = goodService.getGoodCount();
        return new Response<Integer>(true, "", count);
    }

    @RequestMapping(value="/GetGoodList", method = RequestMethod.POST,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<List<Good>> getGoodList(@RequestBody Map<String, Integer> map){

        if(map == null) {
            return new Response<List<Good>>(false, "页面请求错误");
        }
        List<Good> list= goodService.queryGoodsByPageAdmin(map.get("curPage"), map.get("pageSize"));
        return new Response<List<Good>>(true, "", list);

    }
    /**
     * 商品详情查询
     * @param goodId
     * @return
     */
    @RequestMapping(value="/GoodDetail/{goodId}", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Good> queryGoodDetail(@PathVariable(value="goodId") Integer goodId){
        Good result= goodService.queryGoodDetailById(goodId);
        return new Response<Good>(true, "", result);
    }

    /**
     * 商品详情页面
     * @return
     */
    @RequestMapping(value="/GoodDetail", method = RequestMethod.GET)
    public String toGoodDetail(){
        return "good/GoodDetail";
    }

    /**
     * 关键字搜索
     * @param keyWords
     * @return
     */
    @RequestMapping(value = "/searchGood", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> queryAllWithKeyWords(String keyWords,String page, String pageSize){
        List<Good> list =  goodService.queryGoodWithKeywords(keyWords);
        int curpage = Integer.parseInt(page);
        int curpageSize = Integer.parseInt(pageSize);
        int start = (curpage - 1) * curpageSize;
        int end = curpage * curpageSize;
        end = end > list.size() ? list.size() : end;
        if(list != null && !list.isEmpty()){
            return new Response<Object>(true, String.valueOf(list.size()), list.subList(start, end));
        }else{
            return new Response<Object>(false,"");
        }

    }
}
