<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="3;url= home.jsp"> 
<title>欢迎来到双体社区</title>
<style type="text/css" media="all">
html,body{ background:#3385FF;}

p.shine
{
    width: 700px;
}
img{
		width: 100%; height: auto;max-width: 100%; display: block
}

.shine
{
   background: #222 -webkit-gradient(linear, left top, right top, from(#222), to(#222), color-stop(0.5, #fff)) 0 0 no-repeat;
   -webkit-background-size: 125px;
   color: rgba(255, 255, 255, 0.1);
   -webkit-background-clip: text;
	 font-family:"微软雅黑";
	 font-size:60px;
	 font-weight:bold;
	 display:block;
	 position:absolute;
	 left:50%; margin-left:-350px;
	 top:90%; margin-top:-100px;
    -webkit-animation-name: shine;
    -webkit-animation-duration: 2s;
    -webkit-animation-iteration-count: infinite;
}

@-webkit-keyframes shine
{
    0%
    {
        background-position: top left;
    }
    100%
    {
        background-position: top right;
    }
}
</style>
</head>

<body>
<p class="shine">Welcome to 双体论坛</p>
<img src="img/st0.png">
</body>
</html>
