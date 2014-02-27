package com.vegitables.utils;

import java.util.List;

import com.vegitables.entity.ShoppingCart;


public class CalTotalPrice {
	
	private static double totalprice = 0;
	public static double getTotalPrice(List<ShoppingCart> cartList){
		totalprice = 0;
		for(int i=0;i<cartList.size();i++){
			totalprice=totalprice+Double.parseDouble(cartList.get(i).getGoods().getLimitPrice());
		}
		return totalprice;
	}

}
