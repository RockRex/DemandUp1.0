<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
   
    <title>河北省重大技术需求征集系统</title>
	<script type="text/javascript" src="../js/unitPWD.js"></script>
	<link href="../css/unitPWD.css" rel="stylesheet" type="text/css"/>
  </head>
  
  <body>
<h2 align="center" class="one">账户信息</h2><br/><br/>

<form name="homeForm"  method="post" action ="userAddCheck.jsp">
<center>
            
 <table>
 	<tr>
 		<td>登录账号：</td>
 		<td><input type="text" id="userID"name="userID"class="full"></td>
 	</tr>
 	<tr>
 		<td>登录密码：</td>
 		<td><input type="password" id="userPwd"name="userPwd"class="full"></td>
 	</tr>
 	<tr>
 		<td>密码确认：</td>
 		<td><input type="password" id="userPwd2"name="userPwd2"onblur="CheckPWD()"class="full"></td>
 	</tr>
 	<tr>
 		<td>真实姓名：</td>
 		<td><input type="text" id="userName"name="userName"class="full"></td>
 	</tr>
 	<tr>
 		<td>身份证号码：</td>
 		<td><input type="text" id="perID"name="perID"class="full"></td>
 	</tr>
 	<tr>
 		<td>授予角色：</td>
 		<td>
		<input type="radio" name="userType"value="形式审核员" checked>形式审核员
		<input type="radio" name="userType"value="部门审核员">部门审核员
		<input type="radio" name="userType"value="超级管理">超级管理
 		</td>
 	</tr>
 	<tr>
 		<td>所属单位：</td>
 		<td>
 			<select  size="1" id="Auditdepartment" name="Auditdepartment">
   							<option value="超级管理">超级管理</option>
        					<option value="办公室">办公室</option>
        					<option value="人事处">人事处</option>
        					<option value="机关党委">机关党委</option>
        					<option value="政策法规处">政策法规处</option>
        					<option value="计划财务处">计划财务处</option>
        					<option value="平台与基础处">平台与基础处</option>
        					<option value="国际合作处">国际合作处</option>
        					<option value="高新技术处">高新技术处</option>
        					<option value="农村科技处">农村科技处</option>
        					<option value="社会发展处">社会发展处</option>
        					<option value="成果与市场处">成果与市场处</option>
        					<option value="监察室">监察室</option>
        					<option value="离退休干部处">离退休干部处</option>
        					<option value="知识产权局">知识产权局</option>
        					<option value="半干旱中心">半干旱中心</option>
        					<option value="山办">山办</option>
        					<option value="机关服务中心">机关服务中心</option>
        					<option value="科技研发中心">科技研发中心</option>
        					<option value="科技情报研究院">科技情报研究院</option>
        					<option value="器材公司">器材公司</option>
        					<option value="基金办">基金办</option>
        					<option value="档案馆">档案馆</option>
        					<option value="科技管理信息中心">科技管理信息中心</option>
        					<option value="科技投资中心">科技投资中心</option>
        					<option value="成果转换中心">成果转换中心</option>
        					<option value="中小企业创新资金管理中心">中小企业创新资金管理中心</option>
        					<option value="对外交流中心">对外交流中心</option>
      					</select>
		</td>
 	</tr>
 </table> <br><br> 
		<input type ="button" value ="提交" onclick="checkinfo();" class="bt">	
		<input type ="button" value ="返回" onclick="back();"class="bt">	
</center>
 </form>
  </body>
</html>
