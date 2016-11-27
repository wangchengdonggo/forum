package com.forum.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.forum.bean.Comment;
import com.forum.dao.CommentDaoHB;
import com.forum.info.ICommentDAO;

public class CommentAction {
    private String comment;
    private int idposts;
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getIdposts() {
		return idposts;
	}
	public void setIdposts(int idposts) {
		this.idposts = idposts;
	}
    public String execute(){
    	Comment com=new Comment();
    	HttpSession session=ServletActionContext.getRequest().getSession();
		String username=(String)session.getAttribute("username");
		com.setUsername(username);
		com.setIdposts(idposts);
		com.setComment(comment);
		ICommentDAO comdao=new CommentDaoHB();
		comdao.insertComment(com);
		return "sucess";
		
    }
}
