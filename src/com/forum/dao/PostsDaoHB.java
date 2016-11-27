package com.forum.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.forum.bean.Posts;
import com.forum.bean.User;
import com.forum.info.IPostsDAO;

public class PostsDaoHB implements IPostsDAO{

	@Override
	public void insertPosts(Posts posts) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(posts);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public List<Posts> queryBlog() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Posts where type='项目一部'");
		List<Posts> list = query.list();
		return list;
	}

	@Override
	public List<Posts> queryBlog1() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Posts where type='项目二部'");
		List<Posts> list = query.list();
		return list;
	}

	@Override
	public List<Posts> queryBlog2() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Posts where type='项目三部'");
		List<Posts> list = query.list();
		return list;
	}

	@Override
	public List<Posts> queryBlog3() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Posts where type='Java技术'");
		List<Posts> list = query.list();
		return list;
	}

	@Override
	public List<Posts> queryBlog4() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Posts where type='职场关键能力'");
		List<Posts> list = query.list();
		return list;
	}

	@Override
	public List<Posts> queryPosts() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Posts ");
		List<Posts> list = query.list();
		return list;
	}

	@Override
	public Posts queryIdPosts(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Posts where idposts=?");
		query.setInteger(0, id);
		List<Posts> list = query.list();
		if (list != null && list.size() > 0) {
			Posts posts = list.get(0);
			return posts;
		}
		return null;
	}
}
