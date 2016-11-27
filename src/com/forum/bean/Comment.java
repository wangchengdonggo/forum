package com.forum.bean;

import java.sql.Timestamp;

public class Comment {
	private int idposts;
	private int idcomment;
    private String username;
    private String comment;
    private Timestamp creatdate;
	public int getIdposts() {
		return idposts;
	}
	public void setIdposts(int idposts) {
		this.idposts = idposts;
	}
	public int getIdcomment() {
		return idcomment;
	}
	public void setIdcomment(int idcomment) {
		this.idcomment = idcomment;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Timestamp getCreatdate() {
		return creatdate;
	}
	public void setCreatdate(Timestamp creatdate) {
		this.creatdate = creatdate;
	}
    
}
