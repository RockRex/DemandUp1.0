<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>需求管理</title>
<script type="text/javascript" src="../js/demandManage.js"></script>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 1100px;
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
body { font-family:Verdana; font-size:20px; margin:0;}
</style>

</head>
<body>
<br/>
<center>
	<table>
		<tr>
		    <td align="center" width="130">技术需求编号</td>
			<td align="center" width="130">技术需求名称</td>
			<td align="center" colspan="5"width="500">关键字</td>
			<td align="center" width="100">状态</td>	
			<td align="center" width="100">审核进度</td>
			<td align="center" width="100">操作</td>			
		</tr>
		<jsp:useBean id="db" class="bean.DBean" scope="page" />
		<%
			request.setCharacterEncoding("utf-8");
			String LoginID=(String)session.getAttribute("LoginID");
			String sql1="select * from UserTable where userID="+"'"+LoginID+"'";
			String unitName="";
			ResultSet rs1=db.executeQuery(sql1);
			while(rs1.next())
			{
				unitName=rs1.getString("unitName");
			}
			String s2 = "select * from Requirement where Auditdepartment='"+unitName+"'and demandState2='形式审核通过'";
			ResultSet rs2 = db.executeQuery(s2);
			while(rs2.next())
			{
				out.println(
						"<tr><td width='130'>" + rs2.getString("demandID") + 
						"</td><td width='130'>" + rs2.getString("demandName") +
						"</td><td width='100'>" + rs2.getString("demandKeyWord1") +
						"</td><td width='100'>" + rs2.getString("demandKeyWord2") +
						"</td><td width='100'>" + rs2.getString("demandKeyWord3") +
						"</td><td width='100'>" + rs2.getString("demandKeyWord4") +
						"</td><td width='100'>" + rs2.getString("demandKeyWord5") +
						"</td><td width='100'>" + rs2.getString("demandState1") +//状态
						"</td><td width='100'>" + rs2.getString("demandState2") +//审核状态
						"</td><td width='100'>" + "<a href='department.jsp?RequirementID="+rs2.getString("demandID")+"'>部门审核</a>"+			    
						"</td></tr>");
			}
			rs2.close();
			db.close();
		%>
	</table>
	<br/>
	</center>
</body>
</html>
