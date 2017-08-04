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
	    String userID=(String)session.getAttribute("LoginID");//获取登录账号
	    
		String userID2=(String)request.getParameter("userID");
		String userPwd=(String)request.getParameter("userPwd");
		String userName=(String)request.getParameter("userName");
		String perID=(String)request.getParameter("perID");
		
		String s1="update UserTable set userID='"+userID2+
		"',userPwd='"+userPwd+
		"',userName='"+userName+
		"',perID='"+perID+
		"' where userID='"+userID+"'";
		//System.out.println(s1);
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=unitPassword.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=unitPassword.jsp");
		}
        db.close();
	%>
</body>
</html>
