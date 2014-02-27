package com.vegitables.entity;

import java.util.Set;

import com.vegitables.base.Base;

public class Desc extends Base {
	private int descId;
	private String weight;
	private String storeMethod;
	private String freshTime;
	private String mainMeterial;
	private Set<Seasoning> goodsSeasonings;
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getStoreMethod() {
		return storeMethod;
	}
	public void setStoreMethod(String storeMethod) {
		this.storeMethod = storeMethod;
	}
	public String getFreshTime() {
		return freshTime;
	}
	public void setFreshTime(String freshTime) {
		this.freshTime = freshTime;
	}
	public String getMainMeterial() {
		return mainMeterial;
	}
	public void setMainMeterial(String mainMeterial) {
		this.mainMeterial = mainMeterial;
	}
	public int getDescId() {
		return descId;
	}
	public void setDescId(int descId) {
		this.descId = descId;
	}
	public Set<Seasoning> getGoodsSeasonings() {
		return goodsSeasonings;
	}
	public void setGoodsSeasonings(Set<Seasoning> goodsSeasonings) {
		this.goodsSeasonings = goodsSeasonings;
	}
	@Override
	public String toString() {
		return "Desc [descId=" + descId + ", freshTime=" + freshTime
				+ ", goodsSeasonings=" + goodsSeasonings + ", mainMeterial="
				+ mainMeterial + ", storeMethod=" + storeMethod + ", weight="
				+ weight + "]";
	}
	
}
