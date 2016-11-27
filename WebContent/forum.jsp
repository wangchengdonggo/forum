<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
		<title> 双体论坛 </title>
		
		<link rel="stylesheet" type="text/css" href="css/forin.css" />
		<link rel="stylesheet" type="text/css" href="css/for.css" />
		<script src="js/jquery.min.js"></script>
		
		<!--
		<script src="js/jquery-2.1.4.min.js"></script>
		
		
		-->
		<link href="css/lrtk.css" rel="stylesheet" type="text/css" />
	  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	  <script type="text/javascript" src="js/koala.min.1.5.js"></script>	
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
     
     
     
     
     	<form class="fm" action="loginaction1" method="post" name="login">
					
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
					<li style="background-color:#0938F7"> <a href="forum.jsp"> 首页 </a></li>
					<li> <a href="board.jsp"> 版块 </a></li>
					<li> <a href="broadcast.jsp"> 广播 </a></li>
					<li> <a href="center.jsp"> 个人中心 </a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<div id="con_bd">
				<div id="fsD1"  style="border-radius:10px;"class="focus">  
   			 <div id="D1pic1" class="fPic">  
        	<div class="fcon" style="display: none;">
          	<a target="_blank" href=""><img src="img/1.png" style="opacity: 1; "></a>
            <span class="shadow">
            <a target="_blank" href="">难忘是你我纯洁的友情！今年的生日，我们一起过！</a></span>
       		</div>
        	<div class="fcon" style="display: none;">
            <a target="_blank" href=""><img src="img/2.png" style="opacity: 1; "></a>
            <span class="shadow"><a target="_blank" href="">“体坛风云” 你我在这里与软件相约!</a></span>
        	</div>
        	<div class="fcon" style="display: none;">
            <a target="_blank" href=""><img src="img/3.png" style="opacity: 1; "></a>
            <span class="shadow"><a target="_blank" href=""> 烧烤！吃货们的福利！哈哈！ </a></span>
        	</div>
         	<div class="fcon" style="display: none;">
            <a target="_blank" href=""><img src="img/4.png" style="opacity: 1; "></a>
            <span class="shadow"><a target="_blank" href="">满桌美食，只为迎接你--重庆小伙伴！</a></span>
        	</div>    
    		 </div>
    		 <div class="fbg">  
    			 <div class="D1fBt" id="D1fBt">  
        	  <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>1</i></a>  
        	  <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>2</i></a>  
        	  <a href="javascript:void(0)" hidefocus="true" target="_self" class="current"><i>3</i></a>  
        	  <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>4</i></a>  
   			   </div>  
    		 </div>  
    		 <span class="prev"></span>   
    		 <span class="next"></span>    
			  </div> 
			  <script type="text/javascript">
						Qfast.add('widgets', { path: "js/terminator2.2.min.js", type: "js", requires: ['fx'] });  
						Qfast(false, 'widgets', function () {
							K.tabs({
								id: 'fsD1',   //焦点图包裹id  
								conId: "D1pic1",  //** 大图域包裹id  
								tabId:"D1fBt",  
								tabTn:"a",
								conCn: '.fcon', //** 大图域配置class       
								auto: 1,   //自动播放 1或0
								effect: 'fade',   //效果配置
								eType: 'click', //** 鼠标事件
								pageBt:true,//是否有按钮切换页码
								bns: ['.prev', '.next'],//** 前后按钮配置class                          
								interval: 3000  //** 停顿时间  
							});
						});
				</script> 
				<div id="news">
					 
					<!--热门帖子-->
					<div id="hot" style="">
						<p> 热门帖子</p>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<div style="clear: both;display: block"> </div>
					</div>
					
				</div>
				<div id="con">
					
					<!--最新发布-->
					<div id="hot" >
						<p> 最新发布</p>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<div style="clear: both;display: block"> </div>
					</div>
					
					
					<!--最新回复-->
					<div id="hot" style="margin-left:20px;">
						<p> 最新回复</p>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<div style="clear: both;display: block"> </div>
					</div>
					
					<!--广播-->
					<div id="hot" style="margin-left:20px;">
						<p> 广播</p>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<ul>
							<li> <a href="">大家好，欢迎来到双体论坛</a></li>
							<em><a href="">username</a></em>
						</ul>
						<div style="clear: both;display: block"> </div>
					</div>
					
					<div style="clear: both;display: block"> </div>
				</div>
				<div style="clear:both;"></div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div style="clear: both;display: block"> </div>
		<div id="footer">
			<p> Copyright ©2015 双体系卓越人才教育基地 </p>
		</div>
	</body>
</html>
