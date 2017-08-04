<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
<script type="text/javascript" src="../js/unitInf.js"></script>
<link href="../css/unitInf.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:useBean id="db" class="bean.DBean" scope="page" />
	<%
	 	request.setCharacterEncoding("utf-8");
		String LoginID=(String)session.getAttribute("LoginID");
		String sql="select * from unit where userID="+"'"+LoginID+"'";
		ResultSet rs=db.executeQuery(sql);
		while(rs.next())
		{
			
    %>
<h2 align="center" class="one">用户信息</h2><br/><br/>

<form name="homeForm"  method="post" action ="unitInfCheck.jsp">
<center>
            
 <table>
 					<tr>
 						<td>单位组织代码：</td>
 						<td colspan="4"><%out.print(rs.getString("unitID")); %></td>
 					</tr>
					<tr>
						<td><span class="xing">*</span>机构全称</td>
						<td><input type="text" id="unitName"name="unitName"value='<%out.print(rs.getString("unitName")); %>'class="full"></input></td>
						<td><!-- <font color="#ff0000"> -->归口管理部门<!-- </font> --></td>
						<td colspan="2">
						<select class="full" id="unitDepartment"name="unitDepartment">
						<option select value='<%out.print(rs.getString("unitDepartment")); %>'><%out.print(rs.getString("unitDepartment")); %></option> 
						<option  value="">           </option> 
						<option  value="邯郸市科技局">邯郸市科技局</option> 
						<option  value="邢台市科技局">邢台市科技局</option> 
						<option  value="石家庄市科技局">石家庄市科技局</option> 
						<option  value="保定市科技局">保定市科技局</option> 
						<option  value="张家口市科技局">张家口市科技局</option> 
						<option  value="承德市科技局">承德市科技局</option> 
						<option  value="秦皇岛市科技局">秦皇岛市科技局</option> 
						<option  value="唐山市科技局">唐山市科技局</option> 
						<option  value="廊坊市科技局">廊坊市科技局</option> 
						<option  value="沧州市科技局">沧州市科技局</option> 
						<option  value="衡水市科技局">衡水市科技局</option> 
						<option  value="省科技厅">省科技厅</option> 
						<option  value="省财政厅">省财政厅</option> 
						<option  value="省工业和信息化厅">省工业和信息化厅</option> 
						<option  value="省住房和城乡建设厅">省住房和城乡建设厅</option> 
						<option  value="省水利厅">省水利厅</option> 
						<option  value="省计生委">省计生委</option> 
						<option  value="省食品药品监督管理局">省食品药品监督管理局</option> 
						<option  value="省质量技术监督局">省质量技术监督局</option> 
						<option  value="省环保厅">省环保厅</option>
                        <option  value="省卫生厅">省卫生厅</option> 
		      			<option  value="省农业厅">省农业厅</option> 
						<option  value="省教育厅">省教育厅</option> 
						<option  value="省林业厅">省林业厅</option> 
						<option  value="省中小企业局">省中小企业局</option> 
						<option  value="省交通厅">省交通厅</option> 
						<option  value="省国防科技工业局">省国防科技工业局</option> 
						<option  value="省审计厅">省审计厅</option> 
						<option  value="省文化厅">省文化厅</option> 
						<option  value="省统计局">省统计局</option>  
						<option  value="省公安厅">省公安厅</option> 
		      			<option  value="省人力资源和社会保障厅">省人力资源和社会保障厅</option> 
						<option  value="省体育局">省体育局</option> 
						<option  value="省国土资源厅">省国土资源厅</option> 
						<option  value="省科学院">省科学院</option> 
						<option  value="省农科院">省农科院</option> 
						<option  value="省社会科学院">省社会科学院</option> 
						<option  value="省气象局">省气象局</option> 
						<option  value="省地震局">省地震局</option> 
						<option  value="省民政厅">省民政厅</option> 
						<option  value="省委宣传部">省委宣传部</option> 
		      			<option  value="省委组织部">省委组织部</option> 
						<option  value="省供销合作社">省供销合作社 </option> 
						<option  value="省广播电视局">省广播电视局</option> 
						<option  value="省委办公厅">省委办公厅</option> 
						<option  value="省政府研究室">省政府研究室</option> 
						<option  value="省盐务局">省盐务局</option> 
						<option  value="省档案局">省档案局</option> 
						<option  value="省物价局">省物价局</option> 
						<option  value="省人民政府外事办公室">省人民政府外事办公室</option>
						<option  value="省政府办公厅">省政府办公厅</option> 
		      			<option  value="省信访局">省信访局</option> 
						<option  value="省妇联">省妇联</option> 
						<option  value="省法院">省法院</option> 
						<option  value="省检察院">省检察院</option> 
						<option  value="省商务厅">省商务厅</option> 
						<option  value="省发改委">省发改委</option> 
						<option  value="省国资委">省国资委</option> 
						<option  value="辛集市科技局">辛集市科技局</option> 
						<option  value="定州市科技局">定州市科技局</option>
						<option  value="省安全生产监督管理局">省安全生产监督管理局</option> 
		      			<option  value="省国家安全厅">省国家安全厅</option> 
						<option  value="省中医药管理局">省中医药管理局</option> 
						<option  value="河北出入境检验检疫局">河北出入境检验检疫局</option> 
						<option  value="省科协">省科协</option> 
						<option  value="河北钢铁集团有限公司">河北钢铁集团有限公司</option> 
						<option  value="石家庄国家高新技术产业开发区">石家庄国家高新技术产业开发区</option> 
						<option  value="保定国家高新技术产业开发区">保定国家高新技术产业开发区</option> 
						<option  value="省总工会">省总工会</option> 
						<option  value="省旅游局">省旅游局</option>
						<option  value="省新闻出版广电局">省新闻出版广电局</option> 
		      			<option  value="省社科联">省社科联</option> 
						<option  value="团省委">团省委</option> 
						<option  value="省司法厅">省司法厅</option> 
						<option  value="唐山国家高新技术产业开发区">唐山国家高新技术产业开发区</option> 
						<option  value="燕郊国家高新技术产业开发区">燕郊国家高新技术产业开发区</option> 
						<option  value="河北行政学院">河北行政学院</option> 
						<option  value="河北省机构编制委员会办公室">河北省机构编制委员会办公室</option> 
						<option  value="省政府法制办">省政府法制办</option> 
						<option  value="中共河北省委党校">中共河北省委党校</option>
						<option  value="省工商行政管理局">省工商行政管理局</option> 
		      			<option  value="承德国家高新技术产业开发区">承德国家高新技术产业开发区</option>		
						</select>
						</td> 
					</tr>
					<tr>
						<td><span class="xing">*</span>通讯地址</td>
						<td><input type="text" class="full" name="unitAddress" id="unitAddress" value='<%out.print(rs.getString("unitAddress")); %>'size="90"></td>
						<td><span class="xing">*</span>所在地域</td>
						<td colspan="2">
						<select class="full" name="unitCity"id="unitCity">
						<option select value='<%out.print(rs.getString("unitCity")); %>'><%out.print(rs.getString("unitCity")); %></option> 
						<option  value="石家庄市">石家庄市</option> 
						<option  value="唐山市">唐山市</option> 
						<option  value="秦皇岛市">秦皇岛市</option> 
						<option  value="邯郸市">邯郸市</option> 
						<option  value="邢台市">邢台市</option> 
						<option  value="保定市">保定市</option> 
						<option  value="张家口市">张家口市</option> 
						<option  value="承德市">承德市</option> 
						<option  value="沧州市">沧州市</option> 
						<option  value="廊坊市">廊坊市</option> 
						<option  value="衡水市">衡水市</option> 
						<option  value="定州市">定州市</option> 
						<option  value="辛集市">辛集市</option> 
						<option  value="河北工大">其他（河北工大）</option>
						</select>
					</td> 						
					</tr>
					<tr>
						<td>网    址</td>
						<td><input type="text" onblur="urltest()"class="full" name="unitURL" id="unitURL"value='<%out.print(rs.getString("unitURL")); %>'></td>
						<td><span class="xing">*</span>电子信箱</td>
						<td colspan="2"><input type="text" class="full" onblur="verifyAddress()"id="unitEmail"name="unitEmail" value='<%=rs.getString("unitEmail")%>'size=40></td>
					</tr>
					<tr>
						<td><span class="xing">*</span>法人代表</td>
						<td><input type="text"value='<%=rs.getString("unitLPeople")%>' class="full"id="unitLPeople" name="unitLPeople"></td>
						<td>邮政编码</td>
						<td colspan="2"><input type="text" class="full" onblur="youbiantest()"id="unitZipCode"name="unitZipCode" value='<%=rs.getString("unitZipCode")%>' size="43"></td>
					</tr>
					<tr>
						<td rowspan="2"><span class="xing">*</span>联系人</td>
						<td rowspan="2"><input type="text" class="full" id="unitCPeople"name="unitCPeople"value='<%=rs.getString("unitCPeople")%>'></td>
						<td><span class="xing">*</span>电话</td>
						<td >1.固定<input type="text"class="nfull" id="unitPhone"name="unitPhone"size="20" value='<%=rs.getString("unitPhone")%>'></td>
						<td >2.手机<input type="text"class="nfull" onblur="CheckPhone()"id="unitMPhone"name="unitMPhone" value='<%=rs.getString("unitMPhone")%>'></td>
					    <tr>
						<td>传真</td>
						<td colspan="2"><input type="text" class="full"onblur="shuzi()" id="unitFax"name="unitFax" size="90"value='<%=rs.getString("unitFax")%>'></td>
					    </tr>
				    </tr>
					<tr>
						<td><span class="xing">*</span>机构属性</td>
						<td colspan="4">
						<select class="full" name="unitAttribute"id="unitAttribute">
						<option select value='<%out.print(rs.getString("unitAttribute")); %>'><%out.print(rs.getString("unitAttribute")); %></option> 
						<option  value="企业">企业</option>
						<option  value="高等院校">高等院校</option>
						<option  value="研究机构">研究机构</option>
						<option  value="其他">其他</option>
						</select>
						</td>
					</tr>
					<tr>
						<td colspan="5"><span class="xing">*</span>机构简介（主要包括基本情况、现有研究基础等，限500字以内）</td>
						</tr>
					<tr>
						 <td colspan="5">
						   当前可以输入<input name="counter1" type="text" value="500" size="5"class="zishu"readonly>个汉字<br/>
                          <textarea class="textBox" rows="6" cols="120" style="resize:none;" id="unitIntroduce" name="unitIntroduce" 
                         onKeyDown="textCounter(unitIntroduce,counter1,500);" onKeyUp="textCounter(unitIntroduce,counter1,500);" required><%=rs.getString("unitIntroduce")%></textarea></span> 
						</td>
					</tr>
		</table><br><br> 
		<input type ="button" value ="提交" onclick="checkinfo();" class="bt">	
		<input type ="button" value ="返回" onclick="back();"class="bt">	
            </center>
		</form>
		<%}rs.close();%>
</body>
</html>
           