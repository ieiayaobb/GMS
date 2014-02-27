package com.vegitables.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class OrderNumber {
	public static  synchronized String getDealNumber(){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddhhmmss");
		String nowDate = simpleDateFormat.format(new Date())+"";
		 for(int i=0;i<6;i++){
			 nowDate+=new Random().nextInt(10);
		  }
		return nowDate; 
}
}
