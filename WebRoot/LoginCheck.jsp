<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.io.IOException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录中...</title>

</head>
<body>
		<jsp:useBean id="db" class="bean.DBean" scope="page" />  
		<%
		request.setCharacterEncoding("UTF-8");
		String password=(String)request.getParameter("password");
		String username=(String)request.getParameter("username");
		session.setAttribute("password",password);
		String checkcode=request.getParameter("checkCode");  
        if(checkcode.equals("")||checkcode==null){  
            response.setContentType("text/html; charset=UTF-8");
			PrintWriter Aout = response.getWriter();
			Aout.flush();
			Aout.println("<script>");
			Aout.println("alert('请输入验证码！');");
			Aout.println("history.back();");
			Aout.println("</script>");
			response.setHeader("refresh", "1;url=Login.jsp"); 
        }
        else
        {  
            if(!checkcode.equalsIgnoreCase((String)session.getAttribute("realcode")))
            {
            	response.setContentType("text/html; charset=UTF-8");
				PrintWriter Aout = response.getWriter();
				Aout.flush();
				Aout.println("<script>");
				Aout.println("alert('验证码不正确,请重新输入');");
				Aout.println("history.back();");
				Aout.println("</script>");
				response.setHeader("refresh", "1;url=Login.jsp");  
            }
            else
            {
            	String sql="select * from UserTable where userID="+"'"+username+"'";
				ResultSet rs=db.executeQuery(sql);
				if(rs.next())
				{
			    	if(password.equals(rs.getObject("userPwd")))
			    	{
			    		session.setAttribute("LoginID",username);
			    		if(rs.getObject("userType").equals("注册用户"))
			    		{
			    			response.sendRedirect("unitHome.jsp");
			    			
			    		}
			    		if(rs.getObject("userType").equals("形式审核员"))
			    		{
			    			response.sendRedirect("formalHome.jsp");
			    			
			    		}
			    		if(rs.getObject("userType").equals("部门审核员"))
			    		{
			    			response.sendRedirect("departmentHome.jsp");
			    			
			    		}
			    		if(rs.getObject("userType").equals("超级管理"))
			    		{
			    			response.sendRedirect("manageHome.jsp");
			    			
			    		}
			    		else
			    		{
			    			out.print("<script language='javaScript'> alert('登录类型缺失！');</script>");
			    			response.setHeader("refresh", "1;url=Login.jsp");
			    		}
			    		
			    	}
			    	else
			    	{
			    		out.print("<script language='javaScript'> alert('密码输入错误，请重新输入！');</script>");
			    		response.setHeader("refresh", "1;url=Login.jsp");
			    	}
				}
				else{
					out.print("<script language='javaScript'> alert('账号输入有误，请重新输入！');</script>");
					response.sendRedirect("Login.jsp");
				}
				rs.close();
				db.close();	
			}
        }
		
		%>
</body>
</html>