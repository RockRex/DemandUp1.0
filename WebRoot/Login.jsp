<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.io.IOException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>登录界面</title>
    <link href="css/CssLogin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	/**
	 * 注册
	 */
	function regist() {
		// 如果需要在新窗口打开注册界面；
		// window.open('Untitled-2.html');
		// 如果需要在当前窗口打开登录界面
		window.location.href = 'registerHome.jsp';
	}
	function checkIP()
	{//js表单验证方法
		var text1=document.getElementById("username").value;//通过id获取需要验证的表单元素的值
		var text2=document.getElementById("password").value;//通过id获取需要验证的表单元素的值
   		if(text1=="")
   		{//当上面获取的值为空时
     		alert("用户名不能为空！");//弹出提示
     		return false;//返回false（不提交表单）
     	}
     	if(text2=="")
   		{//当上面获取的值为空时
     		alert("密码不能为空！");//弹出提示
     		return false;//返回false（不提交表单）
     	}
   		return true;//提交表单
	}
	function myReload() {  
    document.getElementById("CreateCheckCode").src = document.getElementById("CreateCheckCode").src+"?nocache=" + new Date().getTime();  
	}
	function test()
	{
	alert("如果丢失密码，请与0311-85813216电话联系！");
	}
</script>
</head>
<body class="body_one">
<div id="all">
<div id="input">
	<center>
			<form id="indexform" name="indexForm" action="LoginCheck.jsp" method="post" onsubmit="return checkIP();">
			<table border="0" align="center" cellspacing=0 padding:0 > 
					<tr>
						<td>账&nbsp;户：</td>
						<td><input type="text" id="username" name="username"class="textIn_one"></td>
					</tr>
					<tr><td rowspan="2">&nbsp;</td></tr>
					<tr>
						<td> </td>
					</tr>
					<tr>
						<td>密&nbsp;码：</td>
						<td><input type="password" id="password" name="password" class="textIn_one" ></td>
					</tr>
					<tr><td rowspan="2">&nbsp;</td></tr>
					<tr>
						<td> </td>
					</tr>
					<tr>
						<td>验证码：</td>
						<td>
						<input type="text" id="checkCode" name="checkCode"class="textIn_check" title="验证码不区分大小写"
				size="8" ,maxlength="4">
						<img src="PictureCheckCode" onclick="myReload()" id="CreateCheckCode" align="middle" class="img_check"title="点击切换图片">
						</td>
					</tr>
				</table>
				<table >
			<br>
			<tr>	
				<td><div class="button_1">
				<input type="submit" value="登录" style="color:#000;width:120px;height:40px;font-size: 25px;">
				</div><div class="button_2">
				<input type="button" value="注册"onclick="regist()" style="color:#000;width:120px;height:40px;font-size: 25px;">
				</div></td>
				</tr>
			</form>
			</table>
			
		</center>
		<a class="PasswordBack" onclick="test()">找回密码</a>
		</div>
		<p class="Copyright" align="center">Copyright &copy; 2016.Company name All rights reserved.</p>
</div>
	
</body>
</html>