package cn.aliang.service;

import cn.aliang.entity.Good;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface GoodService {

    public List<Good> listGoodsByType(Integer type);

    public Integer getGoodCountByType(Integer type);

    public List<Good>  queryGoodsByPage(Integer type, Integer curPage, Integer pageSize);

    public Good queryGoodDetailById(Integer goodId);
}
