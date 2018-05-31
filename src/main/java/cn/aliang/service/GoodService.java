package cn.aliang.service;

import cn.aliang.entity.Good;

import java.util.List;
import java.util.Map;

public interface GoodService {

    public List<Good> listGoodsByType(Integer type);

}
