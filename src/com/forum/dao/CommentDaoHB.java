package com.forum.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.forum.bean.Comment;
import com.forum.bean.Posts;
import com.forum.info.ICommentDAO;

public class CommentDaoHB implements ICommentDAO{

	@Override
	public void insertComment(Comment comment) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(comment);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public List<Comment> queryComment(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session
				.createQuery(" from Comment where idposts=?");
		query.setInteger(0, id);
		List<Comment> list = query.list();
		return list;
	}


}
