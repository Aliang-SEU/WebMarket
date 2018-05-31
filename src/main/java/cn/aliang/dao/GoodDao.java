package cn.aliang.dao;

import cn.aliang.entity.Good;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodDao {

    /**
     * 通过商品的类型来查询对应的商品
     * @param type
     * @return
     */
    public List<Good> queryGoodsByType(@Param("type") Integer type);

}
