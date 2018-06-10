package cn.aliang.dao;

import cn.aliang.entity.GoodType;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GoodTypeDao {

    //查询所有的商品分类
    public List<GoodType> queryGoodType();

    //增加一个商品分类
    public boolean addGoodType(String name);

    //根据商品类型查询对应的分类名称
    public GoodType queryGoodTypeNameByType(@Param("type") Integer type);
}
