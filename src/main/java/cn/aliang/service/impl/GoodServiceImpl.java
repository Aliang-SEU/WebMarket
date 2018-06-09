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

    @Override
    public Integer getGoodCountByType(Integer type) {
        return goodDao.getGoodCountByType(type);
    }

    @Override
    public List<Good> queryGoodsByPage(Integer type, Integer curPage, Integer pageSize) {
        Integer rows = (curPage - 1) * (pageSize);
        return goodDao.queryGoodsByPage(type, rows, pageSize);
    }

    @Override
    public Good queryGoodDetailById(Integer goodId) {
        return goodDao.getGoodDetailById(goodId);
    }

    @Override
    public List<Good> queryAllGood() {
        return goodDao.queryAllGood();
    }

    @Override
    public Integer getGoodCount() {
        return goodDao.getGoodCount();
    }

    @Override
    public List<Good> queryGoodsByPageAdmin(Integer curPage, Integer pageSize) {
        Integer rows = (curPage - 1) * (pageSize);
        return goodDao.queryGoodsByPageAdmin(rows, pageSize);
    }

    @Override
    public List<Good> queryGoodWithKeywords(String keywords) {
        return goodDao.queryWithKeyWords("%" + keywords + "%");
    }
}
