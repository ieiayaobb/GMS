package com.vegitables.dao;

import java.util.List;

import com.vegitables.base.BaseDao;
import com.vegitables.entity.User;

public interface UserDao extends BaseDao{
	
	//根据username查询用户是否存在
	public List<User> findUser(String username);
	
	//根据用户名查询用户
	public User getUser(String username);

}
