function check(){
	if (document.reg.usernamename.value==""){
  	alert("�����������û���!");
    reg.username.focus();
    return false;
  }
  if (document.reg.username.value.length<4 || document.reg.username.value.length>15){
    alert("�û�������������4-15λ!");
    reg.username.focus();
    return false;
  }
  if (document.reg.password.value==""){
    alert("����������!");
    reg.password.focus();
    return false;
  }
	if (document.reg.password.value.length<6 || document.reg.password.value.length>15){
    alert("���볤��������6-15λ!");
    reg.password.focus();
    return false;
  }
  if(document.reg.password.value!=document.reg.passwordtrue.value){
    alert("������������벻ͬ!")
    reg.password.focus();
    return false;
  }
	if (document.reg.email.value==""){
    alert("����������email��ַ!");
    reg.email.focus();
    return false;
  }
    var myRegex = /@.*\.[a-z]{2,6}/;
    var email = reg.email.value;
    email = email.replace(/^ | $/g,"");
    email = email.replace(/^\.*|\.*$/g,"");
    email = email.toLowerCase();
       
    if (email == "" || !myRegex.test(email)){
      alert ("��������Ч��E-MAIL!");
      reg.email.focus();
      return false;
    }
      return true;
  }
    function Isval(val,name){
       if (val.value!='' && (isNaN(val.value) || val.value==0)){
      	alert(name+"Ӧ�����֣�");
       	val.value="";
       	val.focus();
     	}
    }
