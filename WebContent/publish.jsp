<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
		<title> 双体论坛 </title>
		<link rel="stylesheet" type="text/css" href="css/for.css" />
		<link rel="stylesheet" type="text/css" href="css/project1.css" />
		<link rel="stylesheet" type="text/css" href="css/wangEditor-1.3.0.min.css">
		<link rel="stylesheet" type="text/css" href="css/publish.css">
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
    <script type="text/javascript" src='js/jquery-1.10.2.min.js'></script>
		<script type="text/javascript" src='js/wangEditor-1.3.0.min.js'></script>
		<script type="text/javascript">
				$(function(){
					var editor = $('#textarea1').wangEditor();
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
				<div id="position"><p> 当前位置 : 版块 > 发帖</p></div>
				<div id="blist" style="height:auto;">
					<p class="blti"> 版块</p>
					<p><a href="project1.jsp">项目一部</a></p>
					<p><a href="project2.jsp">项目二部</a></p>
					<p><a href="project3.jsp">项目三部</a></p>
					<p><a href="project4.jsp">Java技术</a></p>
					<p><a href="project5.jsp">职场关键能力</a></p>
					<a href="publish.jsp"><button> 发帖</button></a>
					<div style="clear: both;display: block"> </div>
				</div>
				<div id="list">
				
				
				
				
					<form action="publish" method="post">
					<div id="st">
					<select id="sec" name="sec" >   
        		<option value="项目一部 ">项目一部 </option>   
        		<option value="项目二部 ">项目二部 </option>   
       		  <option value="项目三部 ">项目三部 </option>   
        		<option value="Java技术">Java技术 </option>   
       		 	<option value="职场关键能力">职场关键能力 </option>   
      		</select>
      		<textarea id="titlep" name="titlep" cols="60" rows="1"></textarea>
      		</div>
					<textarea id="textarea1" name="textarea1" style='height:300px; width:100%;'></textarea>	
					<input class="inps" type="submit" > </input>
					</form>
					
					
					
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
