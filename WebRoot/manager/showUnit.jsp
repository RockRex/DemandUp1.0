<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
<link href="../css/unitInf.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:useBean id="db" class="bean.DBean" scope="page" />
	<%
	 	request.setCharacterEncoding("utf-8");
	 	String userID=(String)request.getParameter("userID");
	    String sql="select * from  unit where userID= '"+userID+"'";
		ResultSet rs=db.executeQuery(sql);
		while(rs.next())
		{
			
    %>
<h2 align="center" class="one">单位信息</h2><br/><br/>
<center>
            
 <table>
 					<tr>
 						<td>单位组织代码：</td>
 						<td colspan="4"><%out.print(rs.getString("unitID")); %></td>
 					</tr>
					<tr>
						<td><span class="xing">*</span>机构全称</td>
						<td><%out.print(rs.getString("unitName")); %></td>
						<td><!-- <font color="#ff0000"> -->归口管理部门<!-- </font> --></td>
						<td colspan="2"><%out.print(rs.getString("unitDepartment")); %></td> 
					</tr>
					<tr>
						<td><span class="xing">*</span>通讯地址</td>
						<td><%out.print(rs.getString("unitAddress")); %></td>
						<td><span class="xing">*</span>所在地域</td>
						<td colspan="2"><%out.print(rs.getString("unitCity")); %></td> 						
					</tr>
					<tr>
						<td>网    址</td>
						<td><%out.print(rs.getString("unitURL")); %></td>
						<td><span class="xing">*</span>电子信箱</td>
						<td colspan="2"><%out.print(rs.getString("unitEmail")); %></td>
					</tr>
					<tr>
						<td><span class="xing">*</span>法人代表</td>
						<td><%out.print(rs.getString("unitLPeople")); %></td>
						<td>邮政编码</td>
						<td colspan="2"><%out.print(rs.getString("unitZipCode")); %></td>
					</tr>
					<tr>
						<td rowspan="2"><span class="xing">*</span>联系人</td>
						<td rowspan="2"><%out.print(rs.getString("unitCPeople")); %></td>
						<td><span class="xing">*</span>电话</td>
						<td >1.固定：<%out.print(rs.getString("unitPhone")); %></td>
						<td >2.手机：<%out.print(rs.getString("unitMPhone")); %></td>
					    <tr>
						<td>传真</td>
						<td colspan="2"><%out.print(rs.getString("unitFax")); %></td>
					    </tr>
				    </tr>
					<tr>
						<td><span class="xing">*</span>机构属性</td>
						<td colspan="4"><%out.print(rs.getString("unitAttribute")); %></td>
					</tr>
					<tr>
						<td colspan="5"><span class="xing">*</span>机构简介（主要包括基本情况、现有研究基础等，限500字以内）</td>
						</tr>
					<tr>
						 <td colspan="5" height="150px"><%out.print(rs.getString("unitIntroduce")); %></td>
					</tr>
		</table><br><br>
		<form name="homeForm"  method="post" action ="user_show.jsp">
		<input type ="submit" value ="返回" onclick="back();"class="bt">	
            </center>
		</form>
		<%}rs.close();%>
</body>
</html>
           