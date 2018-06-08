package cn.aliang.service;

import cn.aliang.entity.Good;

import java.util.List;

public interface GoodService {

    public List<Good> listGoodsByType(Integer type);

    public Integer getGoodCountByType(Integer type);

    public Integer getGoodCount();

    public List<Good>  queryGoodsByPageAdmin(Integer curPage, Integer pageSize);

    public List<Good>  queryGoodsByPage(Integer type, Integer curPage, Integer pageSize);

    public Good queryGoodDetailById(Integer goodId);

    public List<Good> queryAllGood();
}
