package com.forum.action;

import com.opensymphony.xwork2.ActionContext;

public class LoginoutAction {
	public String execute() throws Exception {
		ActionContext context=ActionContext.getContext();
		context.getSession().put("username", null);
		return "sucess";
	}
}
