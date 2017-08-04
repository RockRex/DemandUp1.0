<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看重大技术需求资金征集表</title>
<script type="text/javascript" src="../js/formal.js"></script>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 1300px;
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
<center>
<h1 class="one">重大技术需求征集表</h1><br/>
<br/><br/>
<form name="homeForm" id="homeForm" method="post" action ="formalcheck.jsp">
 <jsp:useBean id="db" class="bean.DBean" scope="page" />
		<%
		request.setCharacterEncoding("utf-8");
		String RequirementID=(String)request.getParameter("RequirementID");
	    String sql="select * from  Requirement where demandID= '"+RequirementID+"'";
	    ResultSet rs=db.executeQuery(sql);
	    while(rs.next())
	    {
	    %>
	    
<INPUT TYPE="hidden"  id = "demandID" name = "demandID" value="<%out.print(rs.getString("demandID"));%>">
            <table>
            		<tr>
            			<td>需求编码</td>
            			<td><%out.print(rs.getString("demandID")); %></td>
            			<td>审核状态</td>
            			<td><%out.print(rs.getString("demandState2")); %></td>
                   </tr>
					<tr>
						<td><span class="xing">*</span>技术需求名称</td>
						<td><%out.print(rs.getString("demandName")); %></td>
						<td><span class="xing">*</span>需求时限</td>
						<td><%out.print(rs.getString("demandStart")); %>年至<%out.print(rs.getString("demandEnd")); %>年</td>
					</tr>
		            <tr>
						<td colspan="4"><span class="xing">*</span>重大科技需求概述</td>
					</tr>
					<tr>
						<td colspan="4">1、主要问题（需要解决的重大技术问题，限500字以内）
					</tr>
					<tr>
					     <td colspan="4"style="height:150px;"><%out.print(rs.getString("demandMain")); %></td>	
					</tr>
					<tr>
						<td colspan="4">2、技术关键（所需的关键技术、主要指标，限500字以内）
					</tr>
					<tr>
					     <td colspan="4"style="height:150px;"><%out.print(rs.getString("demandKey")); %></td>	
					</tr>
                    <tr>
						<td colspan="4">3、预期目标（技术创新性、经济社会效益，限500字以内）</td>
					</tr>
					<tr>
					     <td colspan="4"style="height:150px;"><%out.print(rs.getString("demandTarget")); %></td>	
					</tr>					
					<tr>
                          <td><span class="xing">*</span> 关键字：(1-5个)</td> 
                          <td colspan="4">
                         <%out.print(rs.getString("demandKeyWord1")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                          <%out.print(rs.getString("demandKeyWord2")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                          <%out.print(rs.getString("demandKeyWord3")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                          <%out.print(rs.getString("demandKeyWord4")); %>&nbsp;&nbsp;&nbsp;&nbsp;
                         <%out.print(rs.getString("demandKeyWord5")); %></td>
					</tr>
					<tr>
					    <td>拟投入资金总额</td>
					    <td colspan="3"><%out.print(rs.getString("demandLoan")); %>万元</td>
				    </tr>
				    <tr>
						<td><span class="xing">*</span>技术需求解决方式</td>
						<td colspan="3"><%out.print(rs.getString("demandResearchMode")); %></td>
					</tr>
					<tr>
						<td>合作意向单位:<td>
						<td colspan="3"><%out.print(rs.getString("demandCooperationUnit")); %></td>
					</tr>
					<tr>
						<td><span class="xing">*</span>科技活动类型</td>
						<td colspan="3"><%out.print(rs.getString("demandTechnology")); %></td>
					</tr>
					<tr name="a" id="a">
						<td >学科分类（限基础研究填写）</td>
						<td colspan="3"><%out.print(rs.getString("demandClass3")); %></td>
					</tr>
					<tr name="b" id="b">
						<td>需求技术所属领域（非基础研究填写）</td>
						<td colspan="3"><%out.print(rs.getString("demandDomain")); %></td>
					</tr>
					<tr name="c" id="c">
						<td>需求技术应用行业（非基础研究填写）</td>
						<td colspan="3"><%out.print(rs.getString("demandEconomicClass3")); %></td>
					</tr>
					  			
		
	    			<tr>
  						<td colspan="4">审核意见（选填）</td>
  					</tr>
  					<tr>
  						<td colspan="4" style="height:150px;">
   							<textarea name="Auditopinion" id="Auditopinion" style="width:100%;height:100%" required></textarea>
  						</td>  
  					</tr>
   					<tr>
  						<td>提交部门</td>
  						<td colspan="3">
   							<select  size="1" id="Auditdepartment" name="Auditdepartment">
   							<option value=""></option>
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
  				<tr>
  					<td>审核结果</td>
  					<td colspan="3">
  					<INPUT TYPE="hidden"  id = "shenhejieguo" name = "shenhejieguo">
   					<INPUT TYPE="button" value="通过" onclick="pass()" style="width:100px;height:30px;color:#Black">
   					<INPUT TYPE="button" value="不通过" onclick="nopass()" style="width:100px;height:30px;color:#Black">
  					</td>  
  					</tr>
	  
	</table>
	<input type ="button"  onclick="back()" value ="返回" style="width:100px;height:30px;color:#Black" >
	 </form>
	 <%}rs.close(); %>
</body>
</html> 
