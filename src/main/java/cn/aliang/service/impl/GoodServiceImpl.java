package cn.aliang.service.impl;

import cn.aliang.dao.GoodDao;
import cn.aliang.entity.Good;
import cn.aliang.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GoodServiceImpl implements GoodService {

    @Autowired
    private GoodDao goodDao;

    @Override
    public List<Good> listGoodsByType(Integer type) {

        List<Good> list = goodDao.queryGoodsByType(type);
        return list;
    }
}
