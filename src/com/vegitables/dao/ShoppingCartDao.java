package com.vegitables.dao;

import java.util.List;

import com.vegitables.base.BaseDao;
import com.vegitables.entity.ShoppingCart;

public interface ShoppingCartDao extends BaseDao {
	public List<ShoppingCart> findAllShoppings();
	public List<ShoppingCart> findAllShoppingByUser(int userId);
}
