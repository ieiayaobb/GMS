package com.vegitables.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vegitables.dao.GoodsDao;
import com.vegitables.dao.OrderDao;
import com.vegitables.dao.ShoppingCartDao;
import com.vegitables.dao.UserDao;
import com.vegitables.entity.Goods;
import com.vegitables.entity.Order;
import com.vegitables.entity.ShoppingCart;
import com.vegitables.entity.User;



@Service("commonService")
public class CommonService {
	
	@Autowired
	GoodsDao goodsDao;
	@Autowired
	ShoppingCartDao cartDao;
	@Autowired
	UserDao userDao;
	@Autowired
	OrderDao orderDao;
	public List<Goods> findGoodsByCode(int categoryCode){
		return goodsDao.findGoodsByCode(categoryCode);
	}
	
	public Goods getGoodsByIf(int goodsId){
		return goodsDao.getGoodsById(goodsId);
	}
	
	public void addCart(ShoppingCart cart){
		cartDao.add(cart);
	}
	
	public User getUser(String userName){
		return userDao.getUser(userName);
	}
	
	public List<ShoppingCart> findAllShoppings(){
		return cartDao.findAllShoppings();
	}
	
	public List<ShoppingCart> findAllShoppingById(int userId){
		return cartDao.findAllShoppingByUser(userId);
	}
	
	public void addOrder(Order order){
		orderDao.add(order);
	}
}
