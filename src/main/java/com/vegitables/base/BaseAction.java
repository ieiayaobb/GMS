package com.vegitables.base;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	ActionContext act = ActionContext.getContext();
	
	public ActionContext getAct() {
		return act;
	}

	public void setAct(ActionContext act) {
		this.act = act;
	}


	public String getSessionUserName(){
		return (String)act.getSession().get("username");
	}

	public String getSessionAccount(){
		return (String)act.getSession().get("account");
	}

}
