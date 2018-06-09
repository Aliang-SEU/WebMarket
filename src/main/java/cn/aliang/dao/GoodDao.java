package cn.aliang.dao;

import cn.aliang.entity.Good;
import cn.aliang.entity.ShoppingOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GoodDao {

    /**
     * 通过商品的类型来查询对应的商品
     * @param type
     * @return
     */
    public List<Good> queryGoodsByType(@Param("type") Integer type);

    public List<Good> queryGoodsByPage(@Param("type") Integer type, @Param("curPage") Integer curPage, @Param("pageSize") Integer pageSize);

    public Integer getGoodCountByType(@Param("type") Integer type);

    public Good getGoodDetailById(@Param("goodId") Integer goodId);

    public Integer reduceGoodNumberByOrder(@Param("order")ShoppingOrder order);

    public List<Good> queryAllGood();

    public Integer getGoodCount();

    public List<Good>  queryGoodsByPageAdmin(@Param("curPage") Integer curPage, @Param("pageSize") Integer pageSize);

    public List<Good> queryWithKeyWords(@Param("keywords") String keywords);

    public Integer alterGoodInfo(@Param("good") Good good);

    public Integer addGoodInfo(@Param("good") Good good);
}
