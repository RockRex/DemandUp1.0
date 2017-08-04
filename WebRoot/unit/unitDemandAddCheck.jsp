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
  <%@ page import = "Serial.SerialID"%> 
<%
	request.setCharacterEncoding("UTF-8");
	SerialID serial=new SerialID();
		String demandID="";
		demandID=serial.get(demandID);
		//System.out.println(demandID);
		String unitID="";
		String unitName="";
		String unitDepartment="";
		String unitAddress="";
		String unitCity="";
		String unitURL="";
		String unitEmail="";
		String unitLPeople="";
		String unitZipCode="";
		String unitCPeople="";
		String unitPhone="";
		String unitMPhone="";
		String unitFax="";
		String unitAttribute="";
		String unitIntroduce="";
		
		String userID=(String)session.getAttribute("LoginID");
		String sql="select * from unit where userID="+"'"+userID+"'";
		ResultSet rss=db.executeQuery(sql);
		while(rss.next())
		{
			unitID=rss.getString("unitID");
			unitName=rss.getString("unitName");
			unitDepartment=rss.getString("unitDepartment");
			unitAddress=rss.getString("unitAddress");
			unitCity=rss.getString("unitCity");
			unitURL=rss.getString("unitURL");
			unitEmail=rss.getString("unitEmail");
			unitLPeople=rss.getString("unitLPeople");
			unitZipCode=rss.getString("unitZipCode");
			unitCPeople=rss.getString("unitCPeople");
			unitPhone=rss.getString("unitPhone");
			unitMPhone=rss.getString("unitMPhone");
			unitFax=rss.getString("unitFax");
			unitAttribute=rss.getString("unitAttribute");
			unitIntroduce=rss.getString("unitIntroduce");
		}
		
		
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
		String demandDomain=(request.getParameter("Filed1")+request.getParameter("Filed2")+
				request.getParameter("Filed3")+request.getParameter("Filed4")+
				request.getParameter("Filed5")+request.getParameter("Filed6")
				+request.getParameter("Filed7")+request.getParameter("Filed8")
				+request.getParameter("Filed9")+request.getParameter("Filed10")
				+request.getParameter("Filed11")+request.getParameter("Filed12")).replaceAll("null","");
		String demandEconomicClass3=(String)request.getParameter("Industry3");
		String submitType=(String)request.getParameter("submitType");
		String s ="Select * From Requirement";
		ResultSet rs = db.executeQuery(s);
        String InsertSQL = "Insert Into Requirement Values('" + demandID + "','"+unitID+ "','" + unitName+ "','" + unitDepartment + "','" + unitAddress + "','" + unitCity + "','" + unitURL + "','" 
		+ unitEmail + "','" + unitLPeople + "','" +unitZipCode+ "','" + unitCPeople + "','" + unitPhone + "','" + unitMPhone + "','" + unitFax + "','" 
        + unitAttribute + "','"+unitIntroduce+ "','"+demandName+ "'," + demandStart + "," + demandEnd + ",'" +demandMain+ "','" + demandKey + "','" +demandTarget+ "','" + demandKeyWord1 + "','" + demandKeyWord2 + "','" 
		+ demandKeyWord3 + "','" + demandKeyWord4 + "','"+demandKeyWord5+ "','" + demandLoan + "','"+demandResearchMode+ "','"+demandCooperationUnit+ "','" + demandTechnology + "','"+demandClass3+ "','" 
		+ demandDomain + "','" + demandEconomicClass3 + "','','','"+submitType+"','未审核','','')";
		//System.out.println(InsertSQL);
		int i = db.executeUpdate(InsertSQL);
		if (i == 1)
		{
			out.println("<script language='javaScript'> alert('在线填报提交成功！');</script>");
			response.setHeader("refresh", "1;url=../welcome.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('在线填报提交失败，请重新填写！');history.back();</script>");
			response.setHeader("refresh", "1;url=unitDemandAdd.jsp");
		}
		db.close(); 
		
	%>	
		
</body>
</html>