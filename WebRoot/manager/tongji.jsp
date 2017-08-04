<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>需求管理</title>
<script type="text/javascript" src="../js/manager.js"></script>
<style type="text/css">
	table {
		border-collapse: collapse;
	border: none;
	margin: 0px auto;
	
	}
	
  	th, td {
	border: solid #333 1px;
	height: 20px;
	}
	.btn{
		font-size: 20px; 
		color:black
	}
	a{
		text-decoration: none;
		color:MediumBlue ;
	}
	span{
		font-size: 20px;
		color: white;
	}
	.fenye{
		color: red;
	}
	.border
	{
		border: 0px solid black;
	}
	.border2
	{
		border-collapse:collapse;
		margin: 0 auto;
		border: 0px solid black;
	}
	.full
	{
		width:100%;
		heigt:100%;
		font-size:20px;
	}
	body { font-family:Verdana; font-size:20px; margin:0;color:black}
</style>
</head>
<body>
<br/>
<center>
<h2>统计查询</h2>
<form action="tongji.jsp"method="post" name="homeForm" id="homeForm">
		<table class="border" width="500px">
		<tr>
			<td class="border"width="200px">审核类型:　</td>
			<td class="border"width="300px">
			<select name="demandState2" id="demandState2" class="full">
					<option value=""></option>
					<option value="未审核">未审核</option>
					<option value="形式审核通过">形式审核通过</option>
					<option value="部门审核通过">部门审核通过</option>
					<option value="未通过">未通过</option>
				</select>
			</td>
			
			</tr>
			<tr>
				<td class="border" width="200px">
				<select name="selectcondition" id="selectcondition" class="full">
							<option value="">-请选择查询方式-</option>
							<option value="unitName">机构全称</option>
							<option value="unitDepartment">归口管理单位</option>
							<option value="unitCity">所在地域</option>
							<option value="unitLPeople">法人代表</option>
							<option value="unitCPeople">联系人</option>
							<option value="unitAttribute">机构属性</option>
							<option value="demandName">技术需求名称</option>
							<option value="demandLoan">拟投入资金总额</option>
							<option value="demandResearchMode">技术需求解决方式</option>
							<option value="demandTechnology">科技活动类型</option>
							<option value="demandClass3">学科分类</option>
							<option value="demandDomain">需求技术所属领域</option>
							<option value="demandEconomicClass3">需求技术应用行业</option>
							<option value="Auditdepartment">管理处室</option>
							</select></td>
				
				<td class="border"><input type="text" name="chaxun"id="chaxun" class="full"></td>
			</tr>
			<tr>
			<td class="border"colspan="2" >
			<input type="button" value="查询" class="btn" onclick="check()"></td>	
			</tr>
</table>
	</form>
	<br><br>
	<table border="1" cellpadding="2" width="1100px">
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
			String demandState2=(String)request.getParameter("demandState2");
			String selectcondition=(String)request.getParameter("selectcondition");
			String chaxun=(String)request.getParameter("chaxun");
			if(demandState2=="")
			{
				String s2 = "select * from Requirement where "+selectcondition+"='"+chaxun+"'";
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
						"</td><td width='100'>" + "<a href='selectShow.jsp?RequirementID="+rs2.getString("demandID")+"'>查看详情</a>"+			    
						"</td></tr>");
				}
			}
			else if(chaxun=="")
			{
				String s2 = "select * from Requirement where demandState2='"+demandState2+"'";
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
						"</td><td width='100'>" + "<a href='selectShow.jsp?RequirementID="+rs2.getString("demandID")+"'>查看详情</a>"+			    
						"</td></tr>");
				}
			}
			else
			{
				String s2 = "select * from Requirement where "+selectcondition+"='"+chaxun+"' and demandState2='"+demandState2+"'";
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
						"</td><td width='100'>" + "<a href='selectShow.jsp?RequirementID="+rs2.getString("demandID")+"'>查看详情</a>"+			    
						"</td></tr>");
				}
			}
			db.close();
		%>
	</table>
	<br/>
		
	</center>
</body>
</html>
