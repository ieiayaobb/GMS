package com.vegitables.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//import com.vegitables.service.AdminService;
//import com.vegitables.service.CommonService;
import com.vegitables.service.AdminService;
import com.vegitables.service.CommonService;
import com.vegitables.service.UserService;



public class ServiceFactory{
	
	public static ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	
	//get service instance
	public static UserService userService = (UserService)ctx.getBean("userService");
	public static AdminService adminService = (AdminService)ctx.getBean("adminService");
	public static CommonService commonService = (CommonService)ctx.getBean("commonService");
}