<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
		<title>帐号注册 </title>
		<link rel="stylesheet" type="text/css" href="css/reg.css" />
		<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="js/verify.js"></script>
	</head>
	<body>
		<div class="header">
			<img src="img/st2.png"/>
			<p> —— 让沟通无限可能 </p>
		</div>
		<div class="content">
			<div class="c_bd">
				<div class="bd_tit">
					<p> 注册帐号 </p>
					<span>已有帐号，<a href="home.jsp">返回首页</a></span>
				</div>
				<form  name="reg" class="bd_bd" action="register" onSubmit="return check()" method="post" >
					<table>
						<tr>
							<td class="tb_n">用户名:</td>
							<td ><input class="inpt" onblur="checkUsn(this)" name="user.username" type="text" id="username"  placeholder="由数字或字母组成">
							<span id="hh" style="color: red;"></span></td>
							
						</tr>
						<tr>
							<td class="tb_n" >邮箱:</td>
							<td><input class="inpt" type="text" onblur="checkEmail(this)"  name="user.email" id="email" placeholder="请输入邮箱">
							<span id="hh1" style="color: red;"></span></td>
						</tr>
						<tr>
							<td class="tb_n">密码:</td>
							<td><input class="inpt" type="password" name="user.password" id="password" placeholder="由6-10个字符组成"/></td>
						</tr>
						<tr>
							<td class="tb_n">确认密码:</td>
							<td><input class="inpt" type="password" name="user.passwordtrue" id="passwordtrue" placeholder="再次输入密码"/></td>
						</tr>
						<tr>
							<td class="tb_n"></td>
							<td><input class="inpt_sb" type="submit" value="注 &nbsp&nbsp&nbsp&nbsp 册"/></td>
						</tr>
					</table>	
				</form>
			</div>
		</div>
		<div class="footer">
			<P>Copyright ©2015 双体系卓越人才教育基地</P>
		</div>
		
	<script type="text/javascript">
	
	function checkUsn(inputUsername) {
		var username = inputUsername.value;
		$.post("originAjax", {
			username : username,
		}, function(data, status) {
			if (data == "true") {
				//alert(data); 
				$("#hh").html("用户存在");
				// document.getElementById("hh").innerHTML="用户已经存在";
			} else {
				//alert(data); 
				$("#hh").html("√");
				//document.getElementById("hh").innerHTML="√";
			}
			//alert("Data: " + data + "\nStatus: " + status);
		});
	}

	function checkEmail(inputEmail) {
		var email = inputEmail.value;
		$.post("emailAjax", {
			email : email,
		}, function(data, status) {
			if (data == "true") {
				//alert(status); 
				$("#hh1").html("邮箱存在");
				// document.getElementById("hh").innerHTML="用户已经存在";
			} else {
				//alert(status); 
				$("#hh1").html("√");
				//document.getElementById("hh").innerHTML="√";
			}
			//alert("Data: " + data + "\nStatus: " + status);
		});
	}

	function check() {
		var result = true;
		var username = document.getElementById("username").value;
		if (username == "") {
			alert("请输入用户名！")
			result = false;
		}

		var email = document.getElementById("email").value;
		if (email == "") {
			alert("请输入邮箱！");
			result = false;
		} else {
			var a = email
					.match("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");

			if (a == null) {
				alert("请以正确的邮箱格式输入！")
				result = false;
			}
		}
		var password = document.getElementById("password").value;
		var passwordtrue = document.getElementById("passwordtrue").value;
		if (password == "") {
			alert("请输入密码！");
			result = false;

		}
		if (passwordtrue == "") {
			alert("请确认密码！");
			result = false;
		}
		if (password != passwordtrue) {
			alert("密码与确认密码不一致！");
			result = true;
		}
		return result;
	}
		</script>
		
	</body>
</html>