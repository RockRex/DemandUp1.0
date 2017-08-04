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
		String RequirementID=(String)request.getParameter("demandID");
		//System.out.println(demandID);
		
		String demandName=(String)request.getParameter("demandName");
		String demandStart=(String)request.getParameter("demandStart");
		String demandEnd=(String)request.getParameter("demandEnd");
		String demandMain=(String)request.getParameter("demandMain");
		String demandKey=(String)request.getParameter("demandKey");
		String demandTarget=(String)request.getParameter("demandTarget");
		String demandKeyWord1=(String)request.getParameter("demandKeyWord1");
		String demandKeyWord2=(String)request.getParameter("demandKeyWord2");
		String demandKeyWord3=(String)request.getParameter("demandKeyWord3");
		String demandKeyWord4=(String)request.getParameter("demandKeyWord4");
		String demandKeyWord5=(String)request.getParameter("demandKeyWord5");
		String demandLoan=(String)request.getParameter("demandLoan");
		String demandResearchMode=(String)request.getParameter("demandResearchMode");
		String demandCooperationUnit=(String)request.getParameter("demandCooperationUnit");
		String demandTechnology=(String)request.getParameter("demandTechnology");
		String demandClass3=(String)request.getParameter("Classification3");
		String demandDomain=(String)request.getParameter("demandDomain");
		String demandEconomicClass3=(String)request.getParameter("Industry3");
		
		String s1="update Requirement set demandName='"+demandName+
		"',demandStart="+demandStart+
		",demandEnd="+demandEnd+
		",demandMain='"+demandMain+
		"',demandKey='"+demandKey+
		"',demandTarget='"+demandTarget+
		"',demandKeyWord1='"+demandKeyWord1+
		"',demandKeyWord2='"+demandKeyWord2+
		"',demandKeyWord3='"+demandKeyWord3+
		"',demandKeyWord4='"+demandKeyWord4+
		"',demandKeyWord5='"+demandKeyWord5+
		"',demandLoan='"+demandLoan+
		"',demandResearchMode='"+demandResearchMode+
		"',demandCooperationUnit='"+demandCooperationUnit+
		"',demandTechnology='"+demandTechnology+
		"',demandClass3='"+demandClass3+
		"',demandDomain='"+demandDomain+
		"',demandEconomicClass3='"+demandEconomicClass3+
		"' where demandID='"+RequirementID+"'";
		//System.out.println(s1);
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=edit.jsp?RequirementID="+RequirementID);
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=edit.jsp?RequirementID="+RequirementID);
		}
        db.close();
		
	%>	
		
</body>
</html>