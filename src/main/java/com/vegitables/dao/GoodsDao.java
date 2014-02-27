package com.vegitables.dao;

import java.util.List;

import com.vegitables.base.BaseDao;
import com.vegitables.entity.Goods;

public interface GoodsDao extends BaseDao {
	public List<Goods> findAllGoods();
	public Goods getGoodsById(int goodsId);
	public List<Goods> findGoodsByCode(int categoryCode);
}
