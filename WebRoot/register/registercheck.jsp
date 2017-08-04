<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>  
<%@page import="java.io.PrintWriter" %>
<%@page import="java.io.IOException" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册中....</title>
</head>
<body>


  <jsp:useBean id="db" class="bean.DBean" scope="page" />
<%
		request.setCharacterEncoding("utf-8");
		String username=(String)request.getParameter("username");
		String unitPwd=(String)request.getParameter("password1");
		String unitPwd2=(String)request.getParameter("password2");
		String realName=(String)request.getParameter("realName");
		String perID=(String)request.getParameter("perID");
		
		String unitID=(String)request.getParameter("unitID");
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
//*****************判断唯一性**************************//
//System.out.println(new String(request.getParameter("realName").getBytes("ISO-8859-1"),"UTF-8"));*/
		String s ="Select * From UserTable";
		ResultSet rs = db.executeQuery(s);
		boolean exist = true;
		while(rs.next())
		{
			if(username.equals(rs.getObject("userID")))
			{
				exist = false;
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter Aout = response.getWriter();
				Aout.flush();
				Aout.println("<script>");
				Aout.println("alert('账号已存在,请重新输入');");
				Aout.println("history.back();");
				Aout.println("</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
		}
		String s2 ="Select * From unit";
		ResultSet rs2 = db.executeQuery(s2);
		while(rs2.next())
		{
			if(unitID.equals(rs2.getObject("unitID")))
			{
				exist = false;
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter Aout = response.getWriter();
				Aout.flush();
				Aout.println("<script>");
				Aout.println("alert('该单位已被绑定,每单位只允许有一个账号！');");
				Aout.println("history.back();");
				Aout.println("</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
		}
		String s3 ="Select * From UserTable";
		ResultSet rs3 = db.executeQuery(s3);
		while(rs3.next())
		{
			if(perID.equals(rs3.getObject("perID")))
			{
				exist = false;
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter Aout = response.getWriter();
				Aout.flush();
				Aout.println("<script>");
				Aout.println("alert('该身份证已被绑定,每人只允许有一个账号！');");
				Aout.println("history.back();");
				Aout.println("</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
		}
		if(exist)
		{
			if(unitPwd.equals(unitPwd2))
			{
				String InsertSQL1 ="Insert Into UserTable Values('" 
					+ username + "','" + unitPwd + "','" + realName + "','" + perID + "','注册用户','"+unitName+"')";
				//System.out.println(InsertSQL1);
				String InsertSQL2 = "Insert Into unit Values('" 
				+ username + "','" + unitID +"','"+unitName+ "','"+unitDepartment+ "','"
				+unitAddress+ "','"+unitCity+ "','"+unitURL+ "','"+unitEmail+ "','"
				+unitLPeople+ "','"+unitZipCode+ "','"+unitCPeople+ "','"
				+unitPhone+ "','"+unitMPhone+ "','"+unitFax+ "','"
				+unitAttribute+ "','"+unitIntroduce+ "')";
				int i = db.executeUpdate(InsertSQL1);
				
				int ii = db.executeUpdate(InsertSQL2);
				if (i == 1&&ii==1)
				{
						out.println("<script language='javaScript'> alert('注册成功，点击确定回到登陆页面。');top.location='../Login.jsp';</script>");
				}
			}
			else
			{
				out.println("<script language='javaScript'> alert('密码不一致，请重新填写。');</script>");
				response.setHeader("refresh", "1;url=register.jsp");
			}
		}
		db.close();
		
	%>	
		
</body>
</html>