package com.vegitables.entity;

import java.sql.Timestamp;

import com.vegitables.base.Base;

public class Order extends Base {
	private int orderId;
	private int userId;
	private String orderPrice;
	private String orderScore;
	private int orderStatus;
	private int payStatus;
	private Timestamp orderTime;
	private Address sendAddress;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(String orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getOrderScore() {
		return orderScore;
	}
	public void setOrderScore(String orderScore) {
		this.orderScore = orderScore;
	}
	public int getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}
	public int getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(int payStatus) {
		this.payStatus = payStatus;
	}
	public Timestamp getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Timestamp orderTime) {
		this.orderTime = orderTime;
	}
	public Address getSendAddress() {
		return sendAddress;
	}
	public void setSendAddress(Address sendAddress) {
		this.sendAddress = sendAddress;
	}		
}
