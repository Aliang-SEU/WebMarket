package cn.aliang.service.impl;

import cn.aliang.dao.GoodTypeDao;
import cn.aliang.entity.GoodType;
import cn.aliang.service.GoodTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodTypeServiceImpl implements GoodTypeService {

    @Autowired
    private GoodTypeDao goodTypeDao;

    @Override
    public List<GoodType> queryGoodType() {
        List<GoodType> result = goodTypeDao.queryGoodType();
        return result;
    }
}
