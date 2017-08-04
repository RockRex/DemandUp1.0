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
		    <td align="center" width="100">登录账号</td>
			<td align="center" width="100">真实姓名</td>
			<td align="center" width="150">身份证号码</td>
			<td align="center" width="100">拥有角色</td>
			<td align="center" width="100" colspan="2">操作</td>			
		</tr>
		<jsp:useBean id="db" class="bean.DBean" scope="page" />
		<%
			request.setCharacterEncoding("utf-8");
			String s1="select * from UserTable";
			ResultSet rs2 = db.executeQuery(s1);
			while(rs2.next())
			{
				out.println(
						"<tr><td width='100'>" + rs2.getString("userID") + 
						"</td><td width='100'>" + rs2.getString("userName") +
						"</td><td width='150'>" + rs2.getString("perID") +
						"</td><td width='100'>" + rs2.getString("userType") +
						"</td><td width='100'>" + "<a href='showUnit.jsp?userID="+rs2.getString("userID")+"'>查看所属单位</a>"+
						"</td><td width='100'>" + "<a onclick='return reSetPwd()' href='resetPwd.jsp?userID="+rs2.getString("userID")+"'>重置密码</a>"+			    
						"</td></tr>");
			}
			rs2.close();
			db.close();
		%>
	</table>
	<br/>
		<form >
	    <input type ="button" onclick="turnWel()"  value ="返回" style="width:100px;height:30px;color:black" ></input>
	   </form>
	</center>
</body>
</html>
