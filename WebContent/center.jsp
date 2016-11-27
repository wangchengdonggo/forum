<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
		<title> 双体论坛 </title>
		<link rel="stylesheet" type="text/css" href="css/for.css" />
		<link rel="stylesheet" type="text/css" href="css/center.css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript">
				$(document).ready(function(){
					var topMain=$("#header").height();
					var logo=$("#m_bd");
					$(document).scroll(function(){
						if($(window).scrollTop()>topMain){
							logo.addClass("sc");
						}else{
							logo.removeClass("sc");
						}
					});
				});
    </script>
	</head>
	<body>
		<div class="theme-popover">
     <div class="theme-poptit">
     	<a href="javascript:;" title="关闭" class="close">×</a>
      <h3>  欢 &nbsp 迎 &nbsp 登 &nbsp 录</h3>
     </div>
     <div class="log_lg">
     	<img src="img/st1.png" alt="双体系" title="title" />
     </div>
     <div class="log_bd">
     	<form class="fm"action="loginaction1" method="post" name="login">
					
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
		<% String username = (String) session.getAttribute("username"); %>

		<div id="header">
			<div id="h_bd">
				<img src="img/st2.png" alt="双体论坛" title="双体论坛" />
					<%
					if (username == null) {
				%>
					<p id="h_b">
					<a class="theme-login" href="javascript:;">登录</a>
	        <span>|</span>
					<a href="register.jsp">注册 </a>
				</p>
				<%} else {%>
				
				   <p id="h_b">
					<font size=4.5px;>&nbsp;&nbsp;您好：&nbsp;<%=username%>&nbsp;&nbsp;
					</font> <a href="loginoutaction1"><font size=4.5px;
						>退出</a></font>
				</p>
					<%}%>
				<p id="h_c"> —— 让沟通无限可能 </p>
			</div>
		</div>
		<div class="menu">
			<div id="m_bd">
				<ul>
					<li> <a href="forum.jsp"> 首页 </a></li>
					<li> <a href="board.jsp"> 版块 </a></li>
					<li> <a href="broadcast.jsp"> 广播 </a></li>
					<li  style="background-color:#0938F7"> <a href="center.jsp"> 个人中心 </a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<div id="con_bd">
				<div id="position"><p> 当前位置 : 个人中心 </p></div>
				<div id="inf">
					<div id="logo">
						<img src="img/user0.jpg" alt="alt" title="title" />
					</div>
					<div id="oinf">
						<p>username</p>
						<span><a href="">编辑头像</a></span>&nbsp 
						<span><a href="">更新资料</a></span>
					</div>
				</div>
				
				<div id="infm">
					<div id="infma">
						<p>个人信息</p>
						<table>
							<tr>
								<td class="r"> 用户名</td>
								<td class="f">username</td>
							</tr>
							<tr>
								<td class="r">邮箱</td>
								<td class="f">888@svip.com</td>
							</tr>
							<tr>
								<td class="r">真实姓名</td>
								<td class="f">admin</td>
							</tr>
							<tr>
								<td class="r">出生年月</td>
								<td class="f">2015年6月25日</td>
							</tr>
							<tr>
								<td class="r">性别</td>
								<td class="f">保密</td>
							</tr>
							<tr>
								<td class="r">情感状态</td>
								<td class="f">保密</td>
							</tr>
							<tr>
								<td class="r">职业</td>
								<td class="f">国王</td>
							</tr>
							<tr>
								<td class="r">居住地</td>
								<td class="f">五角大楼</td>
							</tr>
							<tr>
								<td class="r">个人简介</td>
								<td class="f">宇宙超级无敌涛涛</td>
							</tr>
							
						</table>
					</div>
					<div id="cus">
						<p>最近访客</p>
					</div>
					<div id="dyn">
						<p>动态</p>
					</div>
					<div id="dyn">
						<p>主题</p>
					</div>
				</div>
				<div style="clear:both;"></div>
			 </div>
			 <div style="clear: both;display: block"> </div>
		</div>
		<div style="clear: both;display: block"> </div>
		<div id="footer">
			<p> Copyright ©2015 双体系卓越人才教育基地 </p>
		</div>
	</body>
</html>
