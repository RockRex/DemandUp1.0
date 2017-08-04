<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>  
<%@page import="java.io.PrintWriter" %>
<%@page import="java.io.IOException" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>提交中....</title>
</head>
<body>


  <jsp:useBean id="db" class="bean.DBean" scope="page" />
<%
		request.setCharacterEncoding("UTF-8");
		
		String demandID=(String)request.getParameter("demandID");
		String Auditopinion=(String)request.getParameter("Auditopinion");
		String demandState2=(String)request.getParameter("shenhejieguo");
		
		
		String s1="update Requirement set Auditopinion='"+Auditopinion+
		"',demandState2='"+demandState2+
		"' where demandID='"+demandID+"'";
		//System.out.println(s1);
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('审核成功');</script>");
			response.setHeader("refresh", "0;url=formalList.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('审核失败');</script>");
			response.setHeader("refresh", "0;url=formalList.jsp");
		}
        db.close();
		
	%>	
		
</body>
</html>