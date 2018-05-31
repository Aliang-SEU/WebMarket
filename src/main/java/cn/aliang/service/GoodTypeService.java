package cn.aliang.service;

import cn.aliang.entity.GoodType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


public interface GoodTypeService {

    /**
     * 直接查询商品的所有分类情况
     * @return
     */
    public List<GoodType> queryGoodType();

}
