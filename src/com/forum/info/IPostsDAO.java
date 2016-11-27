package com.forum.info;

import java.util.ArrayList;
import java.util.List;

import com.forum.bean.Posts;


public interface IPostsDAO {
	//发帖
	public void insertPosts(Posts posts) ;
	//查询Posts里项目一部的内容
	public List<Posts> queryBlog();
	//查询Posts里项目二部的内容
	public List<Posts> queryBlog1();
	//查询Posts里项目三部的内容
	public List<Posts> queryBlog2();
	//查询Posts里java的内容
	public List<Posts> queryBlog3();
	//查询Posts里职场的内容
	public List<Posts> queryBlog4();
	//查询Posts里所有的内容
	public List<Posts> queryPosts();
	//根据id查处所需要的内容
	public Posts queryIdPosts(int id);
}
