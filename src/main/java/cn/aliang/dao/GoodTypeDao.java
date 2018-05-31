package cn.aliang.dao;

import cn.aliang.entity.GoodType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GoodTypeDao {

    public List<GoodType> queryGoodType();

    public boolean addGoodType(String name);
}
