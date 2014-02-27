package com.vegitables.action;


import com.opensymphony.xwork2.ActionContext;
import com.vegitables.base.BaseAction;
import com.vegitables.entity.User;
import com.vegitables.entity.UserDetail;
import com.vegitables.service.UserService;
import com.vegitables.utils.ServiceFactory;

public class UserAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserService userService = ServiceFactory.userService;
	private User user;
	private String password;
	private UserDetail userDetail;
	ActionContext act = ActionContext.getContext();
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	public String userLogin(){
		return SUCCESS;
	}
	
	public String showLogin(){
		return SUCCESS;
	}
	
	public String userRegist(){
		return SUCCESS;
	}
	
	public String regist(){
		boolean bool = userService.findUser(user.getUserName());
		if(bool){
			userService.addUser(user,userDetail);
			return SUCCESS;
		}
		this.addActionError("用户已经存在，请重新注册");
		user.setPassWord("");
		user.setUserName("");
		return ERROR;
	}
	public String confirmInfo(){
		return SUCCESS;
	}
	public String userLoginSuccess(){
		User user1 = userService.getUser(user.getUserName());
		if(user==null){
			this.addActionError("您的用户名有误，请确认后重新输入");
			return ERROR;
		}else{
			if(!user.getPassWord().equals(user1.getPassWord())){
				this.addActionError("您的密码有误，请确认后重新输入");
				return ERROR;
			}
		}
		act.getSession().put("username", user.getUserName());
		act.getSession().put("userId", user.getUserId());
		return SUCCESS;
	}
	
	public String logout(){
		act.getSession().put("username", null);
		return SUCCESS;
	}
}
