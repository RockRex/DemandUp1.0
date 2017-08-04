<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>验证修改信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
<META HTTP-EQUIV="Expires" CONTENT="0"> 
</head>
<body>

	<jsp:useBean id="db" class="bean.DBean" scope="page" />
	<%
	    request.setCharacterEncoding("utf-8");
	    
		String userID=(String)request.getParameter("userID");
		String userPwd=(String)request.getParameter("userPwd");
		String userName=(String)request.getParameter("userName");
		String perID=(String)request.getParameter("perID");
		String userType=(String)request.getParameter("userType");
		String Auditdepartment=(String)request.getParameter("Auditdepartment");
		
		String s1="Insert Into UserTable Values('"+userID+"','"+userPwd+"','"+userName+
		"','"+perID+"','"+userType+"','"+Auditdepartment+"')";
		String s2="Insert Into unit (userID,unitID,unitName,unitCPeople) Values('"+userID+"','"+userID+"','"+Auditdepartment+"','"+userName+"')";
		//System.out.println(s2);
		int i = db.executeUpdate(s1);
		int j = db.executeUpdate(s2);
		if(i == 1&&j==1)
		{
			out.println("<script language='javaScript'> alert('添加成功');</script>");
			response.setHeader("refresh", "0;url=../welcome.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('添加失败');</script>");
			response.setHeader("refresh", "0;url=../welcome.jsp");
		}
        db.close();
	%>
</body>
</html>
