package cn.aliang.service.impl;

import cn.aliang.Util.FileUpload;
import cn.aliang.dao.GoodDao;
import cn.aliang.entity.Good;
import cn.aliang.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GoodServiceImpl implements GoodService {

    @Autowired
    private GoodDao goodDao;

    /**
     * 按类型查询所有的商品信息
     * @param type
     * @return
     */
    @Override
    public List<Good> listGoodsByType(Integer type) {

        List<Good> list = goodDao.queryGoodsByType(type);
        return list;
    }

    /**
     * 查询对应类型商品的数量
     * @param type
     * @return
     */
    @Override
    public Integer getGoodCountByType(Integer type) {
        return goodDao.getGoodCountByType(type);
    }

    /**
     * 分页查询商品的信息
     * @param type
     * @param curPage
     * @param pageSize
     * @return
     */
    @Override
    public List<Good> queryGoodsByPage(Integer type, Integer curPage, Integer pageSize) {
        Integer rows = (curPage - 1) * (pageSize);
        return goodDao.queryGoodsByPage(type, rows, pageSize);
    }

    /**
     * 查询商品的详细信息
     * @param goodId
     * @return
     */
    @Override
    public Good queryGoodDetailById(Integer goodId) {
        return goodDao.getGoodDetailById(goodId);
    }

    /**
     * 查询所有的商品信息
     * @return
     */
    @Override
    public List<Good> queryAllGood() {
        return goodDao.queryAllGood();
    }

    /**
     * 获得所有商品的数量
     * @return
     */
    @Override
    public Integer getGoodCount() {
        return goodDao.getGoodCount();
    }

    /**
     * 分页查询所有种类的商品
     * @param curPage
     * @param pageSize
     * @return
     */
    @Override
    public List<Good> queryGoodsByPageAdmin(Integer curPage, Integer pageSize) {
        Integer rows = (curPage - 1) * (pageSize);
        return goodDao.queryGoodsByPageAdmin(rows, pageSize);
    }


    /**
     * 关键字搜索对应的商品
     *
     * @param keywords
     * @return
     */
    @Override
    public List<Good> queryGoodWithKeywords(String keywords, Integer curPage, Integer pageSize) {
        int row = (curPage - 1) * pageSize;
        return goodDao.queryWithKeyWords("%" + keywords + "%", row, pageSize);
    }

    /**
     * 关键字搜索商品的数量
     *
     * @param keywords
     * @return
     */
    @Override
    public Integer queryGoodCountWithKeywords(String keywords) {

        return goodDao.queryCountWithKeyWords("%" + keywords + "%");
    }

    /**
     * 修改一个商品
     *
     * @param good
     * @return
     */
    @Override
    public Boolean alterGoodInfo(Good good) {
        Integer result = goodDao.alterGoodInfo(good);
        return result == 1;
    }

    /**
     * 新增一个商品
     *
     * @param good
     * @return
     */
    @Override
    public Boolean addGoodInfo(Good good) {
        Integer result = goodDao.addGoodInfo(good);
        return result == 1;
    }

    /**
     * 删除商品的信息
     *
     * @param good
     * @return
     */
    @Override
    public Boolean deleteGoodInfo(Good good) {
        Integer result = goodDao.deleteGoodInfo(good);
        return result == 1;
    }

    /**
     * 商品图片上传(存储到本地文件夹)
     *
     * @param file
     */
    @Override
    public Map<String, Object> uploadImage(MultipartFile file, HttpServletRequest httpServletRequest) {
        Map<String, Object> map = new HashMap<>();
        try {
            String imageName = FileUpload.uploadFile(file, httpServletRequest);
            map.put("imageName", imageName);
            return map;
        } catch (IOException e) {
            map.put("error", "文件上传失败");
            return map;
        }
    }
}
