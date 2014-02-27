package com.vegitables.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vegitables.base.BaseDaoImpl;
import com.vegitables.dao.UserDao;
import com.vegitables.entity.User;

@Repository
public class UserDaoImpl extends BaseDaoImpl implements UserDao{
	
	public List<User> findUser(String username){
		String hql = "from User user where user.userName = ?";
		Object[] obj = new Object[]{username};
		@SuppressWarnings("unchecked")
		List<User> userList = super.getHibernateTemplate().find(hql, obj);
		return userList;
	}
	
	@SuppressWarnings("unchecked")
	public User getUser(String username){
		String hql = "from User user where user.userName = ?";
		Object[] obj = new Object[]{username};
		List<User> userList = super.getHibernateTemplate().find(hql, obj);
		if(userList.size()==0){
			return null;
		}
		return userList.get(0);
	}

}
