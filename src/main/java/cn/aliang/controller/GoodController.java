package cn.aliang.controller;

import cn.aliang.Util.Response;
import cn.aliang.entity.Good;
import cn.aliang.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.NumberUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
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

    /**
     * 查询所有类型的商品的总数量
     * @return
     */
    @RequestMapping(value="/GetGoodCount", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Integer> queryGoodCount(){

        Integer count = goodService.getGoodCount();
        return new Response<Integer>(true, "", count);
    }

    /**
     * 查询所有商品中的分页商品信息
     * @param map
     * @return
     */
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
        return "goodDetail";
    }

    /**
     * 关键字搜索
     * @param keyWords
     * @return
     */
    @RequestMapping(value = "/searchGood", method = RequestMethod.GET,
            produces={"application/json; charset=utf-8"})
    @ResponseBody
    public Response<Object> queryAllWithKeyWords(String keyWords, Integer page, Integer pageSize){
        /**
         * 字段校验
         */
        if(keyWords == null || page == null || pageSize == null){
            return new Response<Object>(false,"搜索字段有误");
        }

        List<Good> list =  goodService.queryGoodWithKeywords(keyWords, page, pageSize);
        Integer count =  goodService.queryGoodCountWithKeywords(keyWords);

        if(list != null && !list.isEmpty()){
            Map<String, Object> map = new HashMap<>();
            map.put("goodCount", count);
            map.put("goodList", list);
            return new Response<Object>(true, "", map);
        }else{
            return new Response<Object>(false,"");
        }
    }

    /**
     * 修改商品的信息
     * @param good
     * @return
     */
    @RequestMapping(value="/alterGoodInfo", method = RequestMethod.POST,
                    produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public Response<Object> alterGoodInfo(@RequestBody Good good){
        if(good == null){
            return new Response<Object>(false, "网络故障");
        }
        Boolean result = goodService.alterGoodInfo(good);
        if (result == true){
            return new Response<Object>(true, "商品信息修改成功");
        }else{
            return new Response<Object>(false, "商品信息修改失败");
        }
    }

    /**
     * 新增加一个商品
     * @param good
     * @return
     */
    @RequestMapping(value="/addGoodInfo", method = RequestMethod.POST,
            produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public Response<Object> addGoodInfo(@RequestBody Good good){
        if(good == null){
            return new Response<Object>(false, "网络故障");
        }
        Boolean result = goodService.addGoodInfo(good);
        if (result == true){
            return new Response<Object>(true, "商品信息增加成功");
        }else{
            return new Response<Object>(false, "商品信息增加失败");
        }
    }

    /**
     * 删除一个商品
     * @param good
     * @return
     */
    @RequestMapping(value="/deleteGoodInfo", method = RequestMethod.POST,
            produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public Response<Object> deleteGoodInfo(@RequestBody Good good){
        if(good == null){
            return new Response<Object>(false, "网络故障");
        }
        Boolean result = goodService.deleteGoodInfo(good);
        if (result == true){
            return new Response<Object>(true, "商品信息删除成功");
        }else{
            return new Response<Object>(false, "商品信息删除失败");
        }
    }

    /**
     * 上传商品的图片
     * @param file
     * @param httpServletRequest
     * @return
     */
    @RequestMapping(value="/uploadImage", method = RequestMethod.POST,
            produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public Response<Object> uploadImage(@RequestParam(value = "file" , required = true) MultipartFile file, HttpServletRequest httpServletRequest){
        Map<String, Object> map = goodService.uploadImage(file, httpServletRequest);
        if (map.get("error") == null){
            return new Response<Object>(true, "图片上传成功", map);
        }else{
            return new Response<Object>(false, "图片上传失败");
        }
    }

}
