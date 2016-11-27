function check(){
	if (document.reg.usernamename.value==""){
  	alert("请输入您的用户名!");
    reg.username.focus();
    return false;
  }
  if (document.reg.username.value.length<4 || document.reg.username.value.length>15){
    alert("用户名长度限制在4-15位!");
    reg.username.focus();
    return false;
  }
  if (document.reg.password.value==""){
    alert("请输入密码!");
    reg.password.focus();
    return false;
  }
	if (document.reg.password.value.length<6 || document.reg.password.value.length>15){
    alert("密码长度限制在6-15位!");
    reg.password.focus();
    return false;
  }
  if(document.reg.password.value!=document.reg.passwordtrue.value){
    alert("两次输入的密码不同!")
    reg.password.focus();
    return false;
  }
	if (document.reg.email.value==""){
    alert("请输入您的email地址!");
    reg.email.focus();
    return false;
  }
    var myRegex = /@.*\.[a-z]{2,6}/;
    var email = reg.email.value;
    email = email.replace(/^ | $/g,"");
    email = email.replace(/^\.*|\.*$/g,"");
    email = email.toLowerCase();
       
    if (email == "" || !myRegex.test(email)){
      alert ("请输入有效的E-MAIL!");
      reg.email.focus();
      return false;
    }
      return true;
  }
    function Isval(val,name){
       if (val.value!='' && (isNaN(val.value) || val.value==0)){
      	alert(name+"应填数字！");
       	val.value="";
       	val.focus();
     	}
    }
