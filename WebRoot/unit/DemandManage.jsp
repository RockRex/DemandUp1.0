<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
   
    <title>河北省重大技术需求征集系统</title>
    <script type="text/javascript" src="../js/demandManage.js"></script>
<style type="text/css">
#bs_head
{
width:100%;
overflow:hidden;
clear:both;
}
#bs_foot
{
	width:100%;
	overflow:hidden;
	clear:both;
}
.btBlack
{
	width:150px;
	height:30px;
	color:black;
}
.btRed
{
	width:150px;
	height:30px;
	color:red
}
</style>

  </head>
  
  <body>
   <center>
    <h2>需求管理</h2><br>
  <div id="bs_head">
  <form>
  		<table>
		<tr>
		<td><input type ="button" onclick="turnUrl('../requireManage/table_all.jsp')"value ="查看所有" class="btBlack" ></td>
		<td><input type ="button" onclick="turnUrl('../requireManage/table_save.jsp')"value ="修改需求" class="btBlack" ></td>
		<td><input type ="button" onclick="turnUrl('../requireManage/table_formal.jsp')"value ="查询审核进度" class="btBlack" ></td>
		<td><input type ="button" onclick="turnUrl('../requireManage/table_return.jsp')"value ="查看未通过需求" class="btBlack" ></td>
		<td><input type ="button" onclick="turnAdd()" value ="添加技术需求" class="btRed" ></td>
		</tr>
		</table>
		</form>
    </div>
	<div id="bs_foot">
        <IFRAME scrolling="yes" width="100%" onload="Javascript:SetWinHeight(this)" frameborder="0" scrolling="no" id=mfrmright name=mfrmright src="../requireManage/table_all.jsp" allowTransparency="true">
        </IFRAME>
    </div>
</center>
  </body>
</html>
