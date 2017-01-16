<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width = device-width,initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="css/home.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/lrtk.js"></script>
	<title> 双体论坛</title>
</head>
	<body>
		<div class="theme-popover">
     <div class="theme-poptit">
     	<a href="javascript:;" title="关闭" class="close">×</a>
      <h3>  欢 &nbsp 迎 &nbsp 登 &nbsp 录</h3>
     </div >
     <div class="log_lg">
     	<img src="img/st1.png" alt="双体系" title="title" />
     </div>
     <div class="log_bd">
     	<!-- <form class="fm" action="loginaction" method="post" name="login"> -->
			<form class="fm" action="<%=basePath%>user/loginspringmvc" method="post" name="login">
			 <p style="margin:30px auto;position: relative;">
			 	<span class="u_logo"></span>
			 	<input class="inpt" id="username" name="username" type="text" placeholder="请输入用户名或邮箱" value=""/> 
   		 </p>
			 <p style="position: relative;margin:30px auto;">
			  <span class="p_logo"></span>         
			  <input class="inpt" id="password" name="password" type="password" placeholder="请输入密码" value=""/>
			 </p>
			 <input class="logbt" type="submit" value="登&nbsp&nbsp&nbsp&nbsp录" /><br/>
			 <a href="register.jsp"> 没有帐号，立即注册 </a>
			</form>

     </div>
    </div>
    
    
    	<%
						String username = (String) session.getAttribute("username");
			%>
		<div id="header">
			<div id="header_bd">
			<%
					if (username == null) {
				%>
				<p class="h_bd">
					<a class="theme-login" href="javascript:;">登录</a>
					<span>|</span>
					<a href="register.jsp">注册 </a>
				</p>
				<%} else {%>	
					<p class="h_bd">
					<font size=4.5px;>&nbsp;&nbsp;您好：&nbsp;<%=username%>&nbsp;&nbsp;
					</font> <a href="loginoutaction"><font size=4.5px;
						>退出</a></font>
				</p>
				<%}%>
			</div>
		</div>
		
		     
		
		<div id="heade"></div>
		<div id="menu">
			<div id="menu_bd">
				<div id="logo"></div>
				<p class="m_bd">
					<a href="">首页 </a>
					<a  href="http://baike.baidu.com/link?url=wAFDiEigQGJEfwtc-W-ZxbckB1AwH4hfVtIDviAJLMZQzyUystxw8WJmm7EJUOYEp6ltbf4tFOT1MaJsZsvX93imf1xlxmuiFAQehE1_PhqNVKjy96O1cXqvD6seA4zr8OV1lEr8NrlCus-nUx8ZvXQ6BhcJrNMM5madr-gS_wHu0n_Okl-1RkBFH65NjHjtseYmstH_gri9UULdh05CsDCMYSYM3UWZEGpi-lwIwBW">简介</a>
					<a  href="http://www.cisau.com.cn/html/list_1542.html">官网</a>
					<a  href="forum.jsp">论坛</a>
				</p>
			</div>
		</div>
		<div id="content">
			<div id="playBox">
   		<div class="pre"></div>
    	<div class="next"></div>
    	<div class="smalltitle">
      <ul>
        <li class="thistitle"></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
    <ul class="oUlplay">
       <li><a href="" target="_blank"><img src="img/1.jpg"></a></li>
       <li><a href="" target="_blank"><img src="img/2.jpg"></a></li>
       <li><a href="" target="_blank"><img src="img/3.jpg"></a></li>
       <li><a href="" target="_blank"><img src="img/4.jpg"></a></li>
       <li><a href="" target="_blank"><img src="img/5.jpg"></a></li>
       <li><a href="" target="_blank"><img src="img/6.jpg"></a></li>
    </ul>
  </div>
  <div style="clear: both;display: block"> </div>
		</div>
		<div style="clear: both;display: block"> </div>
		<div id="footer">
			<p> Copyright ©2015 双体系卓越人才教育基地 </P>
		</div>
	</body>
</html>