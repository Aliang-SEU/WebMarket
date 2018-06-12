package cn.aliang.service.impl;

import cn.aliang.Util.ProtoStuffUtil;
import cn.aliang.dao.GoodTypeDao;
import cn.aliang.entity.GoodType;
import cn.aliang.service.GoodTypeService;
import com.dyuproject.protostuff.Schema;
import com.dyuproject.protostuff.runtime.RuntimeSchema;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class GoodTypeServiceImpl implements GoodTypeService {

    @Autowired
    private GoodTypeDao goodTypeDao;

    @Autowired
    private JedisPool jedisPool;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    String key = "goodType";

    /**
     * 查询商品的所有分类
     *
     * @return
     */
    @Override
    public List<GoodType> queryGoodType() {

        Jedis jedis = null;
        List<GoodType> goodTypeList = new ArrayList<>();
        /**
         * 先尝试从redis缓存获取商品的分类信息
         */
        try {
            jedis = jedisPool.getResource();
            if (jedis != null) {

                Map<String, String> map = jedis.hgetAll(key);
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    Integer type = Integer.parseInt(entry.getKey());
                    goodTypeList.add(new GoodType(type, entry.getValue()));
                }
                return goodTypeList;
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }

        /**
         * 数据库获取
         */
        goodTypeList = goodTypeDao.queryGoodType();
        /**
         * 进行redis缓存
         */
        if (goodTypeList != null && !goodTypeList.isEmpty()) {
            try {
                jedis = jedisPool.getResource();
                if (jedis != null) {
                    for (GoodType type : goodTypeList) {
                        jedis.hset(key, String.valueOf(type.getType()), type.getName());
                    }
                }
            } catch (Exception e) {
                logger.error(e.getMessage(), e);
            } finally {
                if (jedis != null) {
                    jedis.close();
                }
            }
        }
        return goodTypeList;
    }

    @Override
    public String queryGoodTypeNameByType(Integer type) {
        /**
         * redis 缓存查询
         */
        Jedis jedis = null;
        try{
            jedis = jedisPool.getResource();
            if(jedis != null){
                String name = jedis.hget(key, String.valueOf(type));
                if(name != null){
                    return name;
                }
            }
        }catch (Exception e){
            logger.error(e.getMessage(), e);
        }finally {
            if (jedis != null) {
                jedis.close();
            }
        }

        /**
         * 数据库查询
         */
        GoodType goodType = goodTypeDao.queryGoodTypeNameByType(type);
        if (goodType != null) {
            try{
                jedis = jedisPool.getResource();
                if(jedis != null){
                    jedis.hset(key, String.valueOf(goodType.getType()), goodType.getName());
                }
            }catch (Exception e){
                logger.error(e.getMessage(), e);
            }finally {
                if (jedis != null) {
                    jedis.close();
                }
            }
            return goodType.getName();
        } else{
            logger.error(String.format("数据库查询不到type为%d的分类名称", type));
            return "";
        }
    }
}
