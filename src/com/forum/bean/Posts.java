package com.forum.bean;

import java.sql.Timestamp;

public class Posts {
	private int idposts;
    private String username;
    private String title;
    private String content;
    private String type;
    private int nice;
    private Timestamp creatdate;
	public int getIdposts() {
		return idposts;
	}
	public void setIdposts(int idposts) {
		this.idposts = idposts;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getNice() {
		return nice;
	}
	public void setNice(int nice) {
		this.nice = nice;
	}
	public Timestamp getCreatdate() {
		return creatdate;
	}
	public void setCreatdate(Timestamp creatdate) {
		this.creatdate = creatdate;
	}
    
}
