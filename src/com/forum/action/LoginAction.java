package com.forum.action;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.forum.bean.User;
import com.forum.dao.UserDaoHB;
import com.forum.info.IUserDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
    //private Map session;  
	private String username;
	private String password;
	private IUserDAO userdao;
	
	//private UserDaoHB userdao;
	//private IUserDAO userdao;
	
/*	public UserDaoHB getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDaoHB userdao) {
		this.userdao = userdao;
	}*/

/*	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}
*/
	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}

	public String getUsername() {
		return username;
	}

/*	public Map getSession() {
		return session;
	}

	
	
	public void setSession(Map session) {
		this.session = session;
	}*/

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		//IUserDAO userdao = new UserDaoHB();
		User user = userdao.login(username, password);
		User email = userdao.loginemai(username, password);
		System.out.println(username);
		ActionContext context=ActionContext.getContext();
		if (user != null) {
			context.getSession().put("username", username);
			return "sucess";
		} else if (email != null) {
			context.getSession().put("username", username);
			return "sucess";
		} else {
			return "fail";
		}
	}


}
