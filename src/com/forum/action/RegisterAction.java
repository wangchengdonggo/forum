package com.forum.action;

import com.forum.bean.User;
import com.forum.dao.UserDaoHB;
import com.forum.info.IUserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private User user;
    private IUserDAO userdao;
    
    public IUserDAO getUserdao() {
		return userdao;
	}


	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public String execute(){
    	
		//IUserDAO dao=new UserDaoHB();
    	//System.out.println(user.getUsername());
    /*	dao.insertUser(user);
		return "sucess";*/
		
		boolean bool = userdao.cheakUserExist(user.getUsername());
		boolean bool1 = userdao.cheakEmailExist(user.getEmail());
		if (bool) {
			// context.put("message", "该用户名已经存在！");
			return "fail";

		} else if (bool1) {
			// context.put("message1", "该邮箱已经存在！");
			return "fail";
		} else {
			userdao.insertUser(user);
			return "sucess";
		}

    }
}
