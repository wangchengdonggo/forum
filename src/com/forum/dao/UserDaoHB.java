package com.forum.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;

import com.forum.bean.User;
import com.forum.info.IUserDAO;



public class UserDaoHB implements IUserDAO{

	//登录用户名验证
	@Override
	public User login(String username, String password) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from User where username=? and password=?");// User是类名
		query.setString(0, username);
		query.setString(1, password);

		List<User> list = query.list();
		if (list != null && list.size() > 0) {
			User user = list.get(0);
			return user;
		}
		return null;
	}
	//登录邮箱验证
	public User loginemai(String email, String password) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from User where email=? and password=?");// User是类名
		query.setString(0, email);
		query.setString(1, password);

		List<User> list = query.list();
		if (list != null && list.size() > 0) {
			User user = list.get(0);
			return user;
		}
		return null;
	}
	
	
	//登录手机号验证
		public User loginphone(String phone, String password) {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Query query = session
					.createQuery(" from User where phone=? and password=?");// User是类名
			query.setString(0, phone);
			query.setString(1, password);

			List<User> list = query.list();
			if (list != null && list.size() > 0) {
				User user = list.get(0);
				return user;
			}
			return null;
		}

	//注册插入用户
	@Override
	public void insertUser(User user) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public boolean cheakUserExist(String username) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session.createQuery(" select username from User where username=?");// User是类名
		query.setString(0, username);

		List<User> list = query.list();
		if (list != null && list.size() > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean cheakEmailExist(String email) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session.createQuery(" select email from User where email=?");// User是类名
		query.setString(0, email);

		List<User> list = query.list();
		if (list != null && list.size() > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean cheakPhoneExist(String phone) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session.createQuery(" select phone from User where phone=?");// User是类名
		query.setString(0, phone);

		List<User> list = query.list();
		if (list != null && list.size() > 0) {
			return true;
		} else {
			return false;
		}
	}
	

}
