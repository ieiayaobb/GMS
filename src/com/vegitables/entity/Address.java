package com.vegitables.entity;

public class Address {
	private int sendAddressId;
	private String userAddress;
	private String userPhoneNumber;
	private int userId;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getSendAddressId() {
		return sendAddressId;
	}
	public void setSendAddressId(int sendAddressId) {
		this.sendAddressId = sendAddressId;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}
	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}
	
}
