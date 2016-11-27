package com.forum.info;

import java.util.List;

import com.forum.bean.Comment;



public interface ICommentDAO {
	//发表评论
	public void insertComment(Comment comment) ;
	//查询Posts里项目一部的内容
	public List<Comment> queryComment(int id);
}
