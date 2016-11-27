package com.forum.info;

import com.forum.bean.User;



public interface IUserDAO {

	// 接口里面属性都是 public static final
	String sss="sss";
	// 登录时查看用户名是否存在
	public User login(String username,String password);
	//查入用户的信息
	public void insertUser(User user) ;
	// 注册时判断用户是否存在
	public boolean cheakUserExist(String username);
	// 注册时判断邮箱是否存在
	public boolean cheakEmailExist(String email);
	// 登录时查看邮箱是否存在
	public User loginemai(String username, String password);
	// 注册时判断手机是否存在
	public boolean cheakPhoneExist(String phone);
	// 登录时查看手机是否存在
	public User loginphone(String username, String password);
}
