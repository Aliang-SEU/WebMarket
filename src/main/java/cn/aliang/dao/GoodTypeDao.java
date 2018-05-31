package cn.aliang.dao;

import cn.aliang.entity.GoodType;

import java.util.List;


public interface GoodTypeDao {

    public List<GoodType> queryGoodType();

    public boolean addGoodType(String name);
}
