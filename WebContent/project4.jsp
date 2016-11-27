<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page
	import="java.util.*,com.forum.bean.Posts,com.forum.dao.PostsDaoHB" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
		<title> 双体论坛 </title>
		<link rel="stylesheet" type="text/css" href="css/for.css" />
		<link rel="stylesheet" type="text/css" href="css/project1.css" />
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
					<li > <a href="forum.jsp"> 首页 </a></li>
					<li style="background-color:#0938F7"> <a href="board.jsp"> 版块 </a></li>
					<li> <a href="broadcast.jsp"> 广播 </a></li>
					<li> <a href="center.jsp"> 个人中心 </a></li>
				</ul>
			</div>
		</div>
		<div id="content" >
			<div id="con_bd">
				<div id="position"><p> 当前位置 : 版块 > Java技术</p></div>
				<div id="binf">
					<img src="img/p4.png" alt="alt" title="title" />
					<p> Java技术 </p>
					<h3> 主题数:100 &nbsp 版主:username</h3>
				</div>
				<div id="blist">
					<p class="blti"> 其它版块</p>
					<p><a href="project1.jsp">项目一部</a></p>
					<p><a href="project2.jsp">项目二部</a></p>
					<p><a href="project3.jsp">项目三部</a></p>
					<p><a href="project5.jsp">职场关键能力</a></p>
					<a href="publish.jsp"><button> 发帖</button></a>
				</div>
				<div id="list">
					<table>
						<tr style="background:#3385FF;">
							<th><div id="ttitle">主题</div></th>
							<th><div id="ttitl">作者</div></th>
							<th><div id="ttit">最后发表</div></th>
						</tr>
						<%
						PostsDaoHB postsdao=new PostsDaoHB();
						List<Posts> list = postsdao.queryBlog3();
						for (int i = 0; i < list.size(); i++) {
							Posts posts=list.get(i);
						%>
						<tr>
							<td><a href="title.jsp?idposts=<%=posts.getIdposts()%>"><%=posts.getTitle()%></a></td>
							<td><a href=""><%=posts.getUsername()%></a></td>
							<td><p>username1</p><p>time</p></td>
						</tr>
						<%} %>
					</table>
					
				</div>
				<div style="clear: both;display: block"> </div>
			</div>
		</div>
		<div style="clear: both;display: block"> </div>
		<div id="footer">
			<p> Copyright ©2015 双体系卓越人才教育基地 </p>
		</div>
	</body>
</html>
