package com.forum.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.forum.dao.UserDaoHB;
import com.forum.info.IUserDAO;

import sun.dc.pr.PRError;


public class BookAction {

	private String username;
	private String email;
    private  IUserDAO userdao;

	public IUserDAO getUserdao() {
		return userdao;
	}
	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void usernameAjax() throws IOException {  
	        HttpServletResponse response = ServletActionContext.getResponse();  
	        PrintWriter writer = response.getWriter();  
	      //  UserDaoHB userdao = new UserDaoHB();
	        boolean bool = userdao.cheakUserExist(username);
	        writer.print(bool);  
	        writer.flush();  
	        writer.close();  
	    } 
	public void emailAjax() throws IOException {  
        HttpServletResponse response = ServletActionContext.getResponse();  
        PrintWriter writer = response.getWriter();  
        //IUserDAO userdao = new UserDaoHB();
        boolean bool = userdao.cheakEmailExist(email);
        writer.print(bool);  
        writer.flush();  
        writer.close();  
    } 
}
