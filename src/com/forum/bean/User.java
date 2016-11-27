package com.forum.bean;

import java.sql.Timestamp;


public class User {
	private int iduser;
	private String username;
    private String email;
    private String password;
    private String passwordtrue;
    //private Date creatdate;
    private Timestamp creatdate;
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordtrue() {
		return passwordtrue;
	}
	public void setPasswordtrue(String passwordtrue) {
		this.passwordtrue = passwordtrue;
	}
	public Timestamp getCreatdate() {
		return creatdate;
	}
	public void setCreatdate(Timestamp creatdate) {
		this.creatdate = creatdate;
	}
    
	
}
