package cn.aliang.service;

import cn.aliang.entity.Good;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface GoodService {

    public List<Good> listGoodsByType(Integer type);

    public Integer getGoodCountByType(Integer type);

    public Integer getGoodCount();

    public List<Good>  queryGoodsByPageAdmin(Integer curPage, Integer pageSize);

    public List<Good>  queryGoodsByPage(Integer type, Integer curPage, Integer pageSize);

    public Good queryGoodDetailById(Integer goodId);

    public List<Good> queryAllGood();

    public List<Good> queryGoodWithKeywords(String keywords);

    public Boolean alterGoodInfo(Good good);

    public Boolean addGoodInfo(Good good);

    public Boolean deleteGoodInfo(Good good);

    public void fileUpload(MultipartFile file);
}
