package com.vegitables.entity;

import java.sql.Timestamp;

import com.vegitables.base.Base;

public class ShoppingCart extends Base {
	private int shoppingcartId;
	private int userId;
	private Timestamp addTime;
	private Goods goods;
	public int getShoppingcartId() {
		return shoppingcartId;
	}
	public void setShoppingcartId(int shoppingcartId) {
		this.shoppingcartId = shoppingcartId;
	}
	public Timestamp getAddTime() {
		return addTime;
	}
	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
}
