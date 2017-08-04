<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看重大技术需求资金征集表</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 1500px;
}

span{
color:#ff0000;
}

th, td {
	border: solid #333 1px;
	height: 20px;
}
div {
	text-align: center;
}
* {margin:0px; padding:0px;}
body { font-family:Verdana; font-size:20px; margin:0;}
</style>
</head>
<body>
<br/>
<center>
<h1 class="one">重大技术需求征集表</h1><br/>
<br/><br/><p />
 <jsp:useBean id="db" class="bean.DBean" scope="page" />
		<%
		request.setCharacterEncoding("utf-8");
		String RequirementID=(String)request.getParameter("RequirementID");
	    String sql="select * from  Requirement where demandID= '"+RequirementID+"'";
	    ResultSet rs=db.executeQuery(sql);
	    while(rs.next())
	    {
	    %>
            <table>
                   <tr>
						<td><span class="xing">*</span>机构全称</td>
						<td><%out.print(rs.getString("unitName")); %></td>
						<td colspan="2">归口管理部门</td>
						<td><%out.print(rs.getString("unitDepartment")); %></td>
					</tr>
					<tr>
						<td><span class="xing">*</span>通讯地址</td>
						<td><%out.print(rs.getString("unitAddress")); %></td>
						<td colspan="2"><span class="xing">*</span>所在地域</td>
						<td><%out.print(rs.getString("unitCity")); %></td>			
					</tr>
					<tr>
						<td>网    址</td>
						<td><%out.print(rs.getString("unitURL")) ;%></td>
						<td colspan="2"><span class="xing">*</span>电子信箱</td>
						<td><%out.print(rs.getString("unitEmail")); %></td>	
					</tr>
					<tr>
						<td><span class="xing">*</span>法人代表</td>
						<td><%out.print(rs.getString("unitLPeople")); %></td>	
						<td colspan="2">邮政编码</td>
						<td><%out.print(rs.getString("unitZipCode")); %></td>	
					</tr>
					<tr>
						<td rowspan="2"><span class="xing">*</span>联系人</td>
						<td rowspan="2"><%out.print(rs.getString("unitCPeople"));%></td>	
						<td><span class="xing">*</span>电话</td>
						<td >1.固定<%out.print(rs.getString("unitPhone")); %></td>	
						<td >2.手机<%out.print(rs.getString("unitMPhone")); %></td>	
					<tr>
						<td>传真</td>
						<td colspan="2"><%out.print(rs.getString("unitFax")); %></td>	
					    
				    </tr>
					<tr>
						<td><span class="xing">*</span>机构属性</td>
						<td colspan="4"><%out.print(rs.getString("unitAttribute")); %></td>	
					</tr>
					<tr>
						<td colspan="5"><span class="xing">*</span>机构简介（主要包括基本情况、现有研究基础等，限500字以内）</td>
					</tr>
 					<tr>
					     <td colspan="5" style="height:150px;"><%out.print(rs.getString("unitIntroduce")); %></td>	
					</tr>
					<tr>
						<td><span class="xing">*</span>技术需求名称</td>
						<td><%out.print(rs.getString("demandName")); %></td>
						<td><span class="xing">*</span>需求时限</td>
						<td colspan="2"><%out.print(rs.getString("demandStart")); %>年至<%out.print(rs.getString("demandEnd")); %>年</td>
					</tr>
		            <tr>
						<td colspan="5"><span class="xing">*</span>重大科技需求概述</td>
					</tr>
					<tr>
						<td colspan="5">1、主要问题（需要解决的重大技术问题，限500字以内）
					</tr>
					<tr>
					     <td colspan="5"style="height:150px;"><%out.print(rs.getString("demandMain")); %></td>	
					</tr>
					<tr>
						<td colspan="5">2、技术关键（所需的关键技术、主要指标，限500字以内）
					</tr>
					<tr>
					     <td colspan="5"style="height:150px;"><%out.print(rs.getString("demandKey")); %></td>	
					</tr>
                    <tr>
						<td colspan="5">3、预期目标（技术创新性、经济社会效益，限500字以内）</td>
					</tr>
					<tr>
					     <td colspan="5"style="height:150px;"><%out.print(rs.getString("demandTarget")); %></td>	
					</tr>					
					<tr>
                          <td><span class="xing">*</span> 关键字：(1-5个)</td> 
                          <td colspan="5">
                         <%out.print(rs.getString("demandKeyWord1")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                          <%out.print(rs.getString("demandKeyWord2")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                          <%out.print(rs.getString("demandKeyWord3")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                          <%out.print(rs.getString("demandKeyWord4")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                         <%out.print(rs.getString("demandKeyWord5")); %></td>
					</tr>
					<tr>
					    <td>拟投入资金总额</td>
					    <td colspan="5"><%out.print(rs.getString("demandLoan")); %>万元</td>
				    </tr>
				    <tr>
						<td rowspan="2"><span class="xing">*</span>技术需求解决方式</td>
						<td colspan="4"><%out.print(rs.getString("demandResearchMode")); %></td>
					<tr>
						<td colspan="4">合作意向单位:<%out.print(rs.getString("demandCooperationUnit")); %></td>
					</tr>
					<tr>
						<td><span class="xing">*</span>科技活动类型</td>
						<td colspan="4"><%out.print(rs.getString("demandTechnology")); %></td>
					</tr>
					<tr name="a" id="a">
						<td >学科分类（限基础研究填写）</td>
						<td colspan="4"><%out.print(rs.getString("demandClass3")); %></td>
					</tr>
					<tr name="b" id="b">
						<td>需求技术所属领域（非基础研究填写）</td>
						<td colspan="4"><%out.print(rs.getString("demandDomain")); %></td>
					</tr>
					<tr name="c" id="c">
						<td>需求技术应用行业（非基础研究填写）</td>
						<td colspan="4"><%out.print(rs.getString("demandEconomicClass3")); %></td>
					</tr>
					</table> 
					<%
	        }
			rs.close();
			db.close();
		%>
		<br/>
		<table>
		<form action="require_manage.jsp">
	    <input type ="submit" name="submit" value ="返回" style="width:100px;height:30px;color:#BC8F8F" >
	   </form>
	</table>
</body>
</html> 
