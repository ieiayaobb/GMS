package com.vegitables.entity;

import com.vegitables.base.Base;

public class Goods extends Base {
	private int goodsId;
	private String goodsName;
	private String goodsPicture;
	private String originalPrice;
	private String peopleNumber;
	private String limitPrice;
	private int categoryCode;
	private Desc desc;
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsPicture() {
		return goodsPicture;
	}
	public void setGoodsPicture(String goodsPicture) {
		this.goodsPicture = goodsPicture;
	}
	public String getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(String originalPrice) {
		this.originalPrice = originalPrice;
	}
	public String getPeopleNumber() {
		return peopleNumber;
	}
	public void setPeopleNumber(String peopleNumber) {
		this.peopleNumber = peopleNumber;
	}
	public String getLimitPrice() {
		return limitPrice;
	}
	public void setLimitPrice(String limitPrice) {
		this.limitPrice = limitPrice;
	}
	public int getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}
	public Desc getDesc() {
		return desc;
	}
	public void setDesc(Desc desc) {
		this.desc = desc;
	}
	@Override
	public String toString() {
		return "Goods [categoryCode=" + categoryCode + ", desc=" + desc
				+ ", goodsId=" + goodsId + ", goodsName=" + goodsName
				+ ", goodsPicture=" + goodsPicture + ", limitPrice="
				+ limitPrice + ", originalPrice=" + originalPrice
				+ ", peopleNumber=" + peopleNumber + "]";
	}
	
}
