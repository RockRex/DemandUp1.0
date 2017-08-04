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
	    
		String unitName=(String)request.getParameter("unitName");
		String unitDepartment=(String)request.getParameter("unitDepartment");
		String unitAddress=(String)request.getParameter("unitAddress");
		String unitCity=(String)request.getParameter("unitCity");
		String unitURL=(String)request.getParameter("unitURL");
		String unitEmail=(String)request.getParameter("unitEmail");
		String unitLPeople=(String)request.getParameter("unitLPeople");
		String unitZipCode=(String)request.getParameter("unitZipCode");
		String unitCPeople=(String)request.getParameter("unitCPeople");
		String unitPhone=(String)request.getParameter("unitPhone");
		String unitMPhone=(String)request.getParameter("unitMPhone");
		String unitFax=(String)request.getParameter("unitFax");
		String unitAttribute=(String)request.getParameter("unitAttribute");
		String unitIntroduce=(String)request.getParameter("unitIntroduce");
		
		String s1="update unit set unitName='"+unitName+
		"',unitDepartment='"+unitDepartment+
		"',unitAddress='"+unitAddress+
		"',unitCity='"+unitCity+
		"',unitURL='"+unitURL+
		"',unitEmail='"+unitEmail+
		"',unitLPeople='"+unitLPeople+
		"',unitZipCode='"+unitZipCode+
		"',unitCPeople='"+unitCPeople+
		"',unitPhone='"+unitPhone+
		"',unitMPhone='"+unitMPhone+
		"',unitFax='"+unitFax+
		"',unitAttribute='"+unitAttribute+
		"',unitIntroduce='"+unitIntroduce+
		"' where userID='"+userID+"'";
		//System.out.println(s1);
		int i = db.executeUpdate(s1);
		if(i == 1)
		{
			out.println("<script language='javaScript'> alert('修改成功');</script>");
			response.setHeader("refresh", "0;url=unitInf.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('修改失败');</script>");
			response.setHeader("refresh", "0;url=unitInf.jsp");
		}
        db.close();
	%>
</body>
</html>
