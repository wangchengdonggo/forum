<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page
	import="java.util.*,com.forum.bean.*,com.forum.dao.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
		<title> 双体论坛 </title>
		<link rel="stylesheet" type="text/css" href="css/for.css" />
		<link rel="stylesheet" type="text/css" href="css/title.css" />
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
					<li style="background-color:#0938F7"> <a href="board.jsp"> 版块 </a></li>
					<li> <a href="broadcast.jsp"> 广播 </a></li>
					<li> <a href="center.jsp"> 个人中心 </a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<div id="con_bd">
				<div id="position"><p> 当前位置 : 版块  >  <a href="project2.html">项目二部</a> </p></div>
				<!--主贴-->
				
							<%
					    String a=request.getParameter("idposts");
						PostsDaoHB postsdao=new PostsDaoHB();
						int id=Integer.parseInt(a);
						
						Posts posts = postsdao.queryIdPosts(id);
						%>
				
				<div class="module">
					<div id="inf">
						<div id="logo">
							<img src="img/user.jpg" alt="alt" title="title" />
						</div>
						<div id="oinf">
							<p><a href=""><%=posts.getUsername()%></a> </p>
						</div>
					</div>
					
		
					<div id="infm">
					<div class="atitle">
					<p> <%=posts.getTitle() %></p></div>
						
						<div class="article">
							<article><%=posts.getContent() %>
							</article>
							
						</div>
						
						<div style="clear: both;display: block"></div>
					</div>
					<div style="clear: both;display: block"></div>
					<div class="reply">
					<span> 发表于 <%=posts.getCreatdate() %> </span>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp
					
					<span><a href="">删除 </a></span><span>|</span>
					<span><a href="#formm">评论 </a></span><span>|</span>
					<span><a href="">赞(1) </a></span>
					</div>
				</div>
				<%
				CommentDaoHB com=new CommentDaoHB();
				List<Comment> list = com.queryComment(id);
				for (int i = 0; i < list.size(); i++) {
					Comment com1=list.get(i);
				
				%>
				
				
				
						<!--跟帖-->
				<div class="module">
					<div id="inf">
						<div id="logo">
							<img src="img/user.jpg" alt="alt" title="title" />
						</div>
						<div id="oinf">
							<p><a href=""><%=com1.getUsername()%></a> </p>
						</div>
					</div>
					<div id="infm">
						<div class="article">
							<article>
							<%=com1.getComment()%>
							</article>	
						</div>
						<div style="clear: both;display: block"></div>
					</div>
					<div style="clear: both;display: block"></div>
					<div class="reply">
					<span> 发表于 <%=com1.getCreatdate()%></span>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp
					<span><a href="">删除 </a></span><span>|</span>
					<span><a href="">回复 </a></span><span>|</span>
					<span><a href="">赞(1) </a></span>
					</div>
				</div>
				
				<%} %>
				
			 <div style="clear: both;display: block"> </div>
			 <div id="formm"> 
			 		<form  action="comment" method="post" >
			 			<textarea  required="true" name="comment"></textarea><br/>
			 			<input type="hidden" name="idposts" value="<%=posts.getIdposts()%>"/>
			 			<input  class="inps" type="submit" value="发表评论"/>	
			 		</form>
			 		<div style="clear: both;display: block"> </div>
			 </div>
			  <div style="clear: both;display: block"> </div>
		</div>
		<div style="clear: both;display: block"> </div>
		<div id="footer">
			<p> Copyright ©2015 双体系卓越人才教育基地 </p>
		</div>
	</body>
</html>
