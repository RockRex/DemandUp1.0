<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
   
    <title>河北省重大技术需求征集系统</title>
	<script type="text/javascript" src="../js/unitPWD.js"></script>
	<link href="../css/unitPWD.css" rel="stylesheet" type="text/css"/>
  </head>
  
  <body>
  <jsp:useBean id="db" class="bean.DBean" scope="page" />
	<%
	 	request.setCharacterEncoding("utf-8");
		String LoginID=(String)session.getAttribute("LoginID");
		String sql="select * from UserTable where userID="+"'"+LoginID+"'";
		ResultSet rs=db.executeQuery(sql);
		while(rs.next())
		{
			
    %>
<h2 align="center" class="one">账户信息</h2><br/><br/>

<form name="homeForm"  method="post" action ="unitPwdCheck.jsp">
<center>
            
 <table>
 	<tr>
 		<td>登录账号：</td>
 		<td><input type="text" id="userID"name="userID"value='<%out.print(rs.getString("userID")); %>'class="full"></td>
 	</tr>
 	<tr>
 		<td>登录密码：</td>
 		<td><input type="password" id="userPwd"name="userPwd"value='<%out.print(rs.getString("userPwd")); %>'class="full"></td>
 	</tr>
 	<tr>
 		<td>密码确认：</td>
 		<td><input type="password" id="userPwd2"name="userPwd2"onblur="CheckPWD()"class="full"></td>
 	</tr>
 	<tr>
 		<td>真实姓名：</td>
 		<td><input type="text" id="userName"name="userName"value='<%out.print(rs.getString("userName")); %>'class="full"></td>
 	</tr>
 	<tr>
 		<td>身份证号码：</td>
 		<td><input type="text" id="perID"name="perID"value='<%out.print(rs.getString("perID")); %>'class="full"></td>
 	</tr>
 </table> <br><br> 
		<input type ="button" value ="提交" onclick="checkinfo();" class="bt">	
		<input type ="button" value ="返回" onclick="back();"class="bt">	
</center>
 </form>

		<%}rs.close();%>
  </body>
</html>
