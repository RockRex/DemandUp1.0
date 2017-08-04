<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色管理</title>
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
<center>
		<h1 class="one">角色管理</h1><br/>
		<input type ="submit" name="submit" value ="新增角色" style="width:100px;height:30px;color:#BC8F8F" ><br/><br/>
        <p>请选择角色:
		<td><select class="full" name="juese">
		<option select value="">-----请选择----</option> 
	    <option  value="1">管理员</option> 
		<option  value="2">形式审核员</option> 
		<option  value="2">部门审核员</option> 
		<option  value="3">注册用户</option> 
		</select>
		</td> </p><br/>	
<form name="homeForm"  method="post" action =""  >
<table>
	<tr>
		<td align="center">权限名称</td>
		<td align="center">是否授予</td>
	</tr>
	<tr>
		<td align="center">用户管理</td>
		<td align="center"><input type="checkbox" name="a"></input></td>
	</tr>
	<tr>
		<td align="center">角色管理</td>
		<td align="center"><input type="checkbox" name="a1"></input></td>
	</tr>
	<tr>
		<td align="center">需求管理</td>
		<td align="center"><input type="checkbox" name="a2"></input></td>
	</tr>
	<tr>
		<td align="center">形式审核</td>
		<td align="center"><input type="checkbox" name="a3"></input></td>
	</tr>
	<tr>
		<td align="center">部门审核</td>
		<td align="center"><input type="checkbox" name="a4"></input></td>
	</tr>
	<tr>
		<td align="center">统计查询</td>
		<td align="center"><input type="checkbox" name="a5"></input></td>
	</tr>
	<tr>
		<td align="center">系统介绍</td>
		<td align="center"><input type="checkbox" name="a6"></input></td>
	</tr>
	<tr>
		<td align="center">帮助文件</td>
		<td align="center"><input type="checkbox" name="a7"></input></td>
	</tr>
	<tr>
		<td align="center">常见问题解答</td>
		<td align="center"><input type="checkbox" name="a8"></input></td>
	</tr>
	</table><br><br>
</form>	
          <p>  <input type ="submit" name="submit" value ="提交" style="width:100px;height:30px;color:#BC8F8F" ></p>
            
</center>		    
</body>
</html>