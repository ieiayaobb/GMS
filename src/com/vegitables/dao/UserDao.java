package com.vegitables.dao;

import java.util.List;

import com.vegitables.base.BaseDao;
import com.vegitables.entity.User;

public interface UserDao extends BaseDao{
	
	//����username��ѯ�û��Ƿ����
	public List<User> findUser(String username);
	
	//�����û�����ѯ�û�
	public User getUser(String username);

}
