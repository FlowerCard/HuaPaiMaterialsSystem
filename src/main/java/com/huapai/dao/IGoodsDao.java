package com.huapai.dao;

import com.huapai.entity.Goods;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author HuaPai
 * @email HuaPai@odcn.live
 * Created on 2021/10/12.
 * 商品持久层解接口
 */
@Repository("goodsDao")
public interface IGoodsDao {

    /**
     * 查询所有
     * @return 商品集合
     */
    public List<Goods> selectAll();

    /**
     * 通过ID查询商品
     * @param id 商品id
     * @return 商品对象
     */
    public Goods selectById(Integer id);

    /**
     * 新增商品
     * @param goods 商品对象
     * @return 受影响行数
     */
    public Integer insertGoods(Goods goods);

    /**
     * 更新商品
     * @param goods 商品对象
     * @return 受影响行数
     */
    public Integer updateGoods(Goods goods);

    /**
     * 删除商品
     * @param id 商品id
     * @return 受影响行数
     */
    public Integer deleteById(Integer id);

    /**
     * 通过类型id查询商品
     * @param typeId 类型id
     * @return 商品id集合
     */
    public List<Integer> searchByTypeId(Integer typeId);
    
}
