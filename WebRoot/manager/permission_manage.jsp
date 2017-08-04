<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限管理</title>
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
<script type="text/javascript">
//验证***************************************************************************************************************
function checkinfo()
{
	if(homeForm.yhgl.value=="删除")
	{
		alert("确定删除用户管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.yhgl.value=="冻结")
	{
		alert("确定冻结用户管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.yhgl.value=="解除")
	{
		alert("确定解除用户管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.jsgl.value=="删除")
	{
		alert("确定删除角色管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.jsgl.value=="冻结")
	{
		alert("确定冻结角色管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.jsgl.value=="解除")
	{
		alert("确定解除角色管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xqgl.value=="删除")
	{
		alert("确定删除需求管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xqgl.value=="冻结")
	{
		alert("确定冻结需求管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xqgl.value=="解除")
	{
		alert("确定解除需求管理这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xssh.value=="删除")
	{
		alert("确定删除形式审核这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xssh.value=="冻结")
	{
		alert("确定冻结形式审核这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xssh.value=="解除")
	{
		alert("确定解除形式审核这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.bmsh.value=="删除")
	{
		alert("确定删除部门审核这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.bmsh.value=="冻结")
	{
		alert("确定冻结部门审核这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.bmsh.value=="解除")
	{
		alert("确定解除部门审核这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.tjcx.value=="删除")
	{
		alert("确定删除统计查询这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.tjcx.value=="冻结")
	{
		alert("确定冻结统计查询这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.tjcx.value=="解除")
	{
		alert("确定解除统计查询这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xtjs.value=="删除")
	{
		alert("确定删除系统介绍这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xtjs.value=="冻结")
	{
		alert("确定冻结系统介绍这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.xtjs.value=="解除")
	{
		alert("确定解除系统介绍这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.bzwj.value=="删除")
	{
		alert("确定删除帮助文件这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.bzwj.value=="冻结")
	{
		alert("确定冻结帮助文件这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.bzwj.value=="解除")
	{
		alert("确定解除帮助文件这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.cjwtjd.value=="删除")
	{
		alert("确定删除常见问题解答这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.cjwtjd.value=="冻结")
	{
		alert("确定冻结常见问题解答这个权限吗？");
		homeForm.submit();
	}
	if(homeForm.cjwtjd.value=="解除")
	{
		alert("确定解除常见问题解答这个权限吗？");
		homeForm.submit();
	}
	else 
	{
		alert("权限修改成功！");
		window.location.href = '../welcome.jsp';
	}
}
</script>
<body>
<center>
		<h1 class="one">权限管理</h1><br/>
		<from >
		<input type ="submit" name="submit" value ="新增权限" style="width:100px;height:30px;color:#BC8F8F" ><br/><br/>
		</from>
<form name="homeForm"  method="post"  onsubmit="return checkinfo()">
<table>
	<tr>
		<td align="center">权限名称</td>
		<td align="center">操作</td>
	</tr>
	<tr>
		<td align="center" >用户管理</td>
		<td align="center">
		<input type="checkbox" name="yhgl" id="shanchu" value="删除">删除</input>
		<input type="checkbox" name="yhgl" id="dongjie" value="冻结">冻结</input>
		<input type="checkbox" name="yhgl" id="jiechu" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">角色管理</td>
		<td align="center">
		<input type="checkbox" name="jsgl" id="shanchu1" value="删除">删除</input>
		<input type="checkbox" name="jsgl" id="dongjie1" value="冻结">冻结</input>
		<input type="checkbox" name="jsgl" id="jiechu1" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">需求管理</td>
		<td align="center">
		<input type="checkbox" name="xqgl" id="shanchu2" value="删除">删除</input>
		<input type="checkbox" name="xqgl" id="dongjie2" value="冻结">冻结</input>
		<input type="checkbox" name="xqgl" id="jiechu2" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">形式审核</td>
		<td align="center">
        <input type="checkbox" name="xssh" id="shanchu3" value="删除">删除</input>
		<input type="checkbox" name="xssh" id="dongjie3" value="冻结">冻结</input>
		<input type="checkbox" name="xssh" id="jiechu3" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">部门审核</td>
		<td align="center">
        <input type="checkbox" name="bmsh" id="shanchu4" value="删除">删除</input>
		<input type="checkbox" name="bmsh" id="dongjie4" value="冻结">冻结</input>
		<input type="checkbox" name="bmsh" id="jiechu4" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">统计查询</td>
		<td align="center">
		<input type="checkbox" name="tjcx" id="shanchu5" value="删除">删除</input>
		<input type="checkbox" name="tjcx" id="dongjie5" value="冻结">冻结</input>
		<input type="checkbox" name="tjcx" id="jiechu5" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">系统介绍</td>
		<td align="center">
        <input type="checkbox" name="xtjs" id="shanchu6" value="删除">删除</input>
		<input type="checkbox" name="xtjs" id="dongjie6" value="冻结">冻结</input>
		<input type="checkbox" name="xtjs" id="jiechu6" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">帮助文件</td>
		<td align="center">
        <input type="checkbox" name="bzwj" id="shanchu7" value="删除">删除</input>
		<input type="checkbox" name="bzwj" id="dongjie7" value="冻结">冻结</input>
		<input type="checkbox" name="bzwj" id="jiechu7" value="解除">解除</input>
		</td>
	</tr>
	<tr>
		<td align="center">常见问题解答</td>
		<td align="center">
        <input type="checkbox" name="cjwtjd" id="shanchu8" value="删除">删除</input>
		<input type="checkbox" name="cjwtjd" id="dongjie8" value="冻结">冻结</input>
		<input type="checkbox" name="cjwtjd" id="jiechu8" value="解除">解除</input>
		</td>
	</tr>
	</table><br><br>
            <input type ="button" name="submit" value ="提交" style="width:100px;height:30px;color:#BC8F8F" onclick="checkinfo()">
            
</form>
            
</center>		    
</body>
</html>