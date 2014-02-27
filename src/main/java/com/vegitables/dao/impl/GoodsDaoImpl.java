package com.vegitables.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vegitables.base.BaseDaoImpl;
import com.vegitables.dao.GoodsDao;
import com.vegitables.entity.Goods;
@Repository
public class GoodsDaoImpl extends BaseDaoImpl implements GoodsDao {
	
	@SuppressWarnings("unchecked")
	public List<Goods> findAllGoods() {
		String hql = "from Goods goods order by goods.goodsId desc";
		List<Goods> goodsList = super.getHibernateTemplate().find(hql);
		return goodsList;
	}

	@SuppressWarnings("unchecked")
	public Goods getGoodsById(int goodsId) {
		String hql = "from Goods goods where goods.goodsId = ?";
		Object[] object = new Object[]{goodsId};
		List<Goods> goodsList = super.getHibernateTemplate().find(hql,object);
		return goodsList.get(0);
	}

	@SuppressWarnings("unchecked")
	public List<Goods> findGoodsByCode(int categoryCode) {
		String hql = "from Goods goods where goods.categoryCode = ?";
		Object[] object = new Object[]{categoryCode};
		List<Goods> goodsList = super.getHibernateTemplate().find(hql,object);
		return goodsList;
	}
	
}
