package com.vegitables.entity;

import java.util.Set;

import com.vegitables.base.Base;

public class Seasoning extends Base{
	private int seasoningId;
	private String seasoningName;
	private Set<Desc> goodsDesc;
	public int getSeasoningId() {
		return seasoningId;
	}
	public void setSeasoningId(int seasoningId) {
		this.seasoningId = seasoningId;
	}
	public String getSeasoningName() {
		return seasoningName;
	}
	public void setSeasoningName(String seasoningName) {
		this.seasoningName = seasoningName;
	}
	public Set<Desc> getGoodsDesc() {
		return goodsDesc;
	}
	public void setGoodsDesc(Set<Desc> goodsDesc) {
		this.goodsDesc = goodsDesc;
	}
	
}
