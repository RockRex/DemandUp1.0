<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户浏览</title>
<style type="text/css">
input.full{
width:100%;
height:100%;
}
option.afull{
width:100%;
height:100%;
}
</style>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 500px;
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
</style>
<style type="text/css">
	* {margin:0px; padding:0px;}
	em{
		color:#3F0;
		}
body { font-family:Verdana; font-size:14px; margin:0;}
#container {margin:0 auto; width:910px;}
#header { height:206px; background:#6cf; margin-bottom:5px;}
#menu { height:20px; background:lightgray; margin-bottom:5px;}
#mainContent { height:500px; margin-bottom:5px;}
#content { margin:0 245px !important; margin:0 245px; height:500px;background-image:url(images/1.jpg);}
#footer { height:40px; background:lightgray;}
</style>
</head>
<body>
<div style="width: 100%; font-family: 微软雅黑; text-align: center">
<B>用户信息</B></FONT></div>
<br/><br/><br/>
	<p />
	<table>
		<tr>
			<td>用户名</td>
			<td>真实姓名</td>
		</tr>
		<jsp:useBean id="db" class="bean.DBean" scope="page" />
		<%
			String s = "select * from user1";
			ResultSet rs = db.executeQuery(s);
			while(rs.next())
			{
				out.println("<tr><td>" + rs.getString(1) +
						"</td><td>" + rs.getString(2) + 
						"</td></tr>");
			}
			rs.close();
			db.close();
		%>
	
	</table>
<!-- 	<br>
	<center>
	<table>
				<form action="main1.jsp">
				<input type="submit" value="返回" style="color:#BC8F8F">
			</form>
			</table>
			</center> -->
</body>
</html>