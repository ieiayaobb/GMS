package com.vegitables.action;

import java.text.DecimalFormat;
import java.util.List;

import com.vegitables.base.BaseAction;
import com.vegitables.entity.Address;
import com.vegitables.entity.Goods;
import com.vegitables.entity.Order;
import com.vegitables.entity.ShoppingCart;
import com.vegitables.entity.User;
import com.vegitables.service.CommonService;
import com.vegitables.service.UserService;
import com.vegitables.utils.CalTotalPrice;
import com.vegitables.utils.OrderNumber;
import com.vegitables.utils.ServiceFactory;
import com.vegitables.utils.Time;

public class CommonAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CommonService commonService = ServiceFactory.commonService;
	UserService userService=ServiceFactory.userService;
	private List<Goods> goodsList01;
	private List<Goods> goodsList02;
	private List<Goods> goodsList03;
	private List<Goods> goodsList04;
	private List<Goods> goodsList05;
	private List<Goods> goodsList06;
	private List<Goods> goodsList07;
	private int categoryCode;
	private List<Goods> goodsList;
	private int goodsId;
	private Goods goods;
	private User user;
	private List<ShoppingCart> cartList;
	private String totalPrice;
	private Order order;
	private Address address;
	
	public List<Goods> getGoodsList01() {
		return goodsList01;
	}

	public void setGoodsList01(List<Goods> goodsList01) {
		this.goodsList01 = goodsList01;
	}

	public List<Goods> getGoodsList02() {
		return goodsList02;
	}

	public void setGoodsList02(List<Goods> goodsList02) {
		this.goodsList02 = goodsList02;
	}

	public List<Goods> getGoodsList03() {
		return goodsList03;
	}

	public void setGoodsList03(List<Goods> goodsList03) {
		this.goodsList03 = goodsList03;
	}

	public List<Goods> getGoodsList04() {
		return goodsList04;
	}

	public void setGoodsList04(List<Goods> goodsList04) {
		this.goodsList04 = goodsList04;
	}

	public List<Goods> getGoodsList05() {
		return goodsList05;
	}

	public void setGoodsList05(List<Goods> goodsList05) {
		this.goodsList05 = goodsList05;
	}

	public List<Goods> getGoodsList06() {
		return goodsList06;
	}

	public void setGoodsList06(List<Goods> goodsList06) {
		this.goodsList06 = goodsList06;
	}

	public List<Goods> getGoodsList07() {
		return goodsList07;
	}

	public void setGoodsList07(List<Goods> goodsList07) {
		this.goodsList07 = goodsList07;
	}

	public int getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}

	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}	

	public List<ShoppingCart> getCartList() {
		return cartList;
	}

	public void setCartList(List<ShoppingCart> cartList) {
		this.cartList = cartList;
	}
	
	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String showIndex(){
		goodsList01=commonService.findGoodsByCode(1);
		goodsList02=commonService.findGoodsByCode(3);
		goodsList03=commonService.findGoodsByCode(6);
		goodsList04=commonService.findGoodsByCode(8);
		goodsList05=commonService.findGoodsByCode(10);
		goodsList06=commonService.findGoodsByCode(11);
		goodsList07=commonService.findGoodsByCode(12);
		return SUCCESS;
	}
	
	public String goodsList(){
		goodsList=commonService.findGoodsByCode(categoryCode);
		return SUCCESS;
	}
	
	public String singleGoods(){
		goods=commonService.getGoodsByIf(goodsId);
		return SUCCESS;
	}
	
	public String addCart(){
		goods=commonService.getGoodsByIf(goods.getGoodsId());
		user=commonService.getUser(this.getSessionUserName());
		ShoppingCart cart=new ShoppingCart();
		cart.setGoods(goods);
		cart.setUserId(user.getUserId());
		cart.setAddTime(Time.getTime());
		commonService.addCart(cart);
		cartList=commonService.findAllShoppingById(user.getUserId());
		if(!cartList.isEmpty()){
		DecimalFormat   df   =   new   DecimalFormat("#####0.00");
		totalPrice=df.format(CalTotalPrice.getTotalPrice(cartList));
		return SUCCESS;
		}
		return ERROR;
	}
	
	public String addAddress(){	
		user=userService.getUser(this.getSessionUserName());
		address.setUserId(user.getUserId());
		order.setUserId(user.getUserId());
		order.setOrderStatus(0);
		order.setPayStatus(0);
		order.setSendAddress(address);
		order.setOrderScore(OrderNumber.getDealNumber());
		commonService.addOrder(order);
		this.addActionMessage("添加成功！");
		return SUCCESS;
	}
	public String orderNumberInfo(){
		
		return SUCCESS;
	}
	public String myCart(){
		user=commonService.getUser(this.getSessionUserName());
		cartList=commonService.findAllShoppingById(user.getUserId());
		if(!cartList.isEmpty()){
		DecimalFormat   df   =   new   DecimalFormat("#####0.00");
		totalPrice=df.format(CalTotalPrice.getTotalPrice(cartList));
		return SUCCESS;
		}
		return ERROR;
	}
}
