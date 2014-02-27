package com.vegitables.utils;

import java.sql.Timestamp;

//get current time
public class Time {
	
	private static Timestamp ts;
	public static Timestamp getTime(){
		ts = new Timestamp(System.currentTimeMillis());
		return ts;
	}

}
