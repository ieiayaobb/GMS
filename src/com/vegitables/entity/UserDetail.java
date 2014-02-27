package com.vegitables.entity;

import com.vegitables.base.Base;

public class UserDetail extends Base {
	private int userDetailId;
	private int sex;
	private String trueName;
	private String residence;
	private String qq;
	private String avatar;
	
	public int getUserDetailId() {
		return userDetailId;
	}
	public void setUserDetailId(int userDetailId) {
		this.userDetailId = userDetailId;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	public String getResidence() {
		return residence;
	}
	public void setResidence(String residence) {
		this.residence = residence;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
}
