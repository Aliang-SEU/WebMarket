package cn.aliang.dao;

import cn.aliang.entity.Good;
import cn.aliang.entity.ShoppingOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GoodDao {

    //通过商品的类型来查询对应的商品
    public List<Good> queryGoodsByType(@Param("type") Integer type);

    //分页查询商品的信息
    public List<Good> queryGoodsByPage(@Param("type") Integer type, @Param("curPage") Integer curPage, @Param("pageSize") Integer pageSize);

    //查询对应类型商品的总数量(用于分页)
    public Integer getGoodCountByType(@Param("type") Integer type);

    //使用商品id查询商品的详细信息
    public Good getGoodDetailById(@Param("goodId") Integer goodId);

    //减少商品库存
    public Integer reduceGoodNumberByOrder(@Param("order")ShoppingOrder order);

    //获得所有的商品信息
    public List<Good> queryAllGood();

    //获得所有商品的数量
    public Integer getGoodCount();

    //管理员页面分页查询商品信息系
    public List<Good>  queryGoodsByPageAdmin(@Param("curPage") Integer curPage, @Param("pageSize") Integer pageSize);

    //关键字查询商品的信息
    public List<Good> queryWithKeyWords(@Param("keywords") String keywords);

    //修改商品的信息
    public Integer alterGoodInfo(@Param("good") Good good);

    //新增加一个商品
    public Integer addGoodInfo(@Param("good") Good good);

    //删除商品
    public Integer deleteGoodInfo(@Param("good") Good good);
}
