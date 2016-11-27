package com.forum.controller;

import java.util.List;

import javax.annotation.Resource;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.forum.bean.User;
import com.forum.info.IUserDAO;

/** * @author  作者 E-mail: 
 * @date 创建时间：2016年3月3日 下午1:57:39 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource IUserDAO userdao;
	@ResponseBody
	@RequestMapping("loginspringmvc")
	public ModelAndView login(HttpServletRequest request,HttpSession session,
			HttpServletResponse response,@RequestParam String username,
			@RequestParam String password){
		//IUserDAO userdao = new UserDaoHB();
		ModelAndView modelAndView  = new ModelAndView();
		User user = userdao.login(username, password);
		User email = userdao.loginemai(username, password);
		System.out.println(username);
		if (user != null) {
			session.setAttribute("username", username);
			return modelAndView;
		} else if (email != null) {
			session.setAttribute("username", username);
	    }
		modelAndView.setViewName("home");
		return modelAndView;
}
}
