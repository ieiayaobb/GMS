package com.vegitables.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vegitables.dao.DescDao;
import com.vegitables.dao.GoodsDao;
import com.vegitables.entity.Desc;
import com.vegitables.entity.Goods;

@Service("adminService")
public class AdminService {
	
	@Autowired
	GoodsDao goodsDao;
	@Autowired
	DescDao descDao;
	
	public void addGoods(Goods goods,Desc desc){
		descDao.add(desc);
		goods.setDesc(desc);
		goodsDao.add(goods);
	}
	
	public List<Goods> findAllGoods(){
		return goodsDao.findAllGoods();
	}
	
	public Goods getGoodsById(int goodsId){
		return goodsDao.getGoodsById(goodsId);
	}
	
	public void deleteGoods(Goods goods){
		goodsDao.delete(goods);
	}
	
	public void updateGoods(Goods goods,Desc desc){
		goods=goodsDao.getGoodsById(goods.getGoodsId());
		descDao.update(goods.getDesc());
		goodsDao.update(goods);
	}
}
