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
	    String RequirementID=(String)request.getParameter("RequirementID");
		String s1="update Requirement set demandState1='提交' where demandID='"+RequirementID+"'";
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('提交成功');</script>");
			response.setHeader("refresh", "0;url=../requireManage/table_all.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('提交失败');</script>");
			response.setHeader("refresh", "0;url=../requireManage/table_all.jsp");
		}
        db.close();
	%>
</body>
</html>
