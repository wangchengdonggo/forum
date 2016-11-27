package com.forum.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.forum.bean.Posts;
import com.forum.dao.PostsDaoHB;

public class PublishAction {
	private String titlep;
	private String textarea1;
    private String sec;
   
	public String getSec() {
		return sec;
	}

	public void setSec(String sec) {
		this.sec = sec;
	}

	public String getTitlep() {
		return titlep;
	}

	public void setTitlep(String titlep) {
		this.titlep = titlep;
	}

	public String getTextarea1() {
		return textarea1;
	}

	public void setTextarea1(String textarea1) {
		this.textarea1 = textarea1;
	}

	public String execute() {
		Posts posts=new Posts();
		
		HttpSession session=ServletActionContext.getRequest().getSession();
		String username=(String)session.getAttribute("username");
		
		posts.setUsername(username);
		posts.setType(sec);
		posts.setTitle(titlep);
		posts.setContent(textarea1);
		posts.setNice(1);
		PostsDaoHB postsdao=new PostsDaoHB();
		postsdao.insertPosts(posts);
		return "sucess";
/*		System.out.println(username);
		System.out.println(sec);
		System.out.println(titlep);
		System.out.println(textarea1);*/
	}
}
