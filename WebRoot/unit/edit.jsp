<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>   
<%@page import="java.util.Date"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<title>河北省重大技术需求征集系统</title>
		<link href="../css/demandAdd.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="../js/edit.js"></script>
</head>
<body>
<jsp:useBean id="db" class="bean.DBean" scope="page" />
	<%
	 	request.setCharacterEncoding("utf-8");
		String RequirementID=(String)request.getParameter("RequirementID");
	    String sql="select * from  Requirement where demandID= '"+RequirementID+"'";
	    ResultSet rs=db.executeQuery(sql);
	    while(rs.next())
	    {
			
    %>
<center>
<h2>河北省重大技术需求征集表</h2>
<form name="homeForm"  method="post" action ="editCheck.jsp">

<table>
					<tr>
						<td><span class="xing">*</span>机构全称</td>
						<td><%out.print(rs.getString("unitName")); %></td>
						<td><!-- <font color="#ff0000"> -->归口管理部门<!-- </font> --></td>
						<td colspan="2"><%out.print(rs.getString("unitDepartment")); %></td> 
					</tr>
					<tr>
						<td><span class="xing">*</span>通讯地址</td>
						<td><%out.print(rs.getString("unitAddress")); %></td>
						<td><span class="xing">*</span>所在地域</td>
						<td colspan="2"><%out.print(rs.getString("unitCity")); %></td> 						
					</tr>
					<tr>
						<td>网    址</td>
						<td><%out.print(rs.getString("unitURL")); %></td>
						<td><span class="xing">*</span>电子信箱</td>
						<td colspan="2"><%out.print(rs.getString("unitEmail"));%></td>
					</tr>
					<tr>
						<td><span class="xing">*</span>法人代表</td>
						<td><%out.print(rs.getString("unitLPeople"));%></td>
						<td>邮政编码</td>
						<td colspan="2"><%out.print(rs.getString("unitZipCode"));%></td>
					</tr>
					<tr>
						<td rowspan="2"><span class="xing">*</span>联系人</td>
						<td rowspan="2"><%out.print(rs.getString("unitCPeople"));%></td>
						<td><span class="xing">*</span>电话</td>
						<td >1.固定：&nbsp;&nbsp;<%out.print(rs.getString("unitPhone"));%></td>
						<td >2.手机：&nbsp;&nbsp;<%out.print(rs.getString("unitMPhone"));%></td>
					    <tr>
						<td>传真</td>
						<td colspan="2"><%out.print(rs.getString("unitFax"));%></td>
					    </tr>
				    </tr>
					<tr>
						<td><span class="xing">*</span>机构属性</td>
						<td colspan="4"><p><%out.print(rs.getString("unitAttribute"));%></P></td>
					</tr>
					<tr>
						<td colspan="5"><span class="xing">*</span>机构简介（主要包括基本情况、现有研究基础等，限500字以内）</td>
					</tr>
 					<tr>
                          <td colspan="5" class="textBox"><%out.print(rs.getString("unitIntroduce")); %></td>	
                    </tr>
					<tr>
						<td><span class="xing">*</span>技术需求名称</td>
						<td><input type="text" name="demandName"class="full" value='<%out.print(rs.getString("demandName")); %>'></td>
						<td><span class="xing">*</span>需求时限</td>
						<td colspan="2">
						<select  name="demandStart" id="demandStart">
						<option selected = "selected" value='<%out.print(rs.getString("demandStart")); %>'><%out.print(rs.getString("demandStart")); %></option>
              <%  
                     StringBuffer bufYear = new StringBuffer();  
                     //下拉列表的年数  
                     for(int i=0;i<50;i++){  
                     //最小年  
                     int iYear = 2016+i;  
                     bufYear.append("<option value = '"+iYear+"'");  
                     Date date = new Date();  
                     int sYear = date.getYear();  
                     //系统时间从1900年开始  
                     int sYearc = sYear+1900;  
                     if(iYear == sYearc){  
                          bufYear.append(" selected");  
                      }  
                     bufYear.append(" >"+iYear+"</option>\n");  
                     }  
                     out.println(bufYear.toString());
               %>
      </select>年至
      <select name="demandEnd"id="demandEnd" onblur="YearYanzheng()">
      <option selected = "selected" value='<%out.print(rs.getString("demandEnd")); %>'><%out.print(rs.getString("demandEnd")); %></option>
              <%  
                     StringBuffer bufYear2 = new StringBuffer();  
                     //下拉列表的年数  
                     for(int i=0;i<50;i++){  
                     //最小年  
                    
                     int iYear2 = 2016+i;  
                     bufYear2.append("<option value = '"+iYear2+"'");  
                     Date date = new Date();  
                     int sYear2 = date.getYear();  
                     //系统时间从1900年开始  
                     int sYearc2 = sYear2+1900;  
                      if(iYear2 == sYearc2){  
                          bufYear2.append(" selected");  
                      }  
                     bufYear2.append(" >"+iYear2+"</option>\n");  
                     }  
                     out.println(bufYear2.toString());  
               %>  
      </select>年 
					</tr>
		            <tr>
						<td colspan="5"><span class="xing">*</span>重大科技需求概述</td>
					</tr>
					<tr>
						<td colspan="5">1、主要问题（需要解决的重大技术问题，限500字以内）
						<tr>
						 <td style="height:100px;" colspan="5"class="textBox">
						   当前可以输入<input name="counter1" type="text" value="500" size="5"class="zishu"readonly>个汉字<br/>
                          <textarea class="textBox" rows="6" cols="120" style="resize:none;" id="demandMain" name="demandMain" 
                         onKeyDown="textCounter(demandMain,counter1,500);" onKeyUp="textCounter(demandMain,counter1,500);" required><%out.print(rs.getString("demandMain")); %></textarea></span> 
						</td>
						</tr>
						<tr>
						<td colspan="5">2、技术关键（所需的关键技术、主要指标，限500字以内）
						<tr>
						 <td style="height:100px;" colspan="5"class="textBox">
						当前可以输入<input name="counter2" type="text" value="500" size="5"class="zishu"readonly>个汉字<br/>
                          <textarea class="textBox" rows="6" cols="120" style="resize:none;" id="demandKey" name="demandKey"
                          onKeyDown="textCounter(demandKey,counter2,500);" onKeyUp="textCounter(demandKey,counter2,500);" required><%out.print(rs.getString("demandKey")); %></textarea></span> 
                          </td>
                          </tr>
                          <tr>
						<td colspan="5">3、预期目标（技术创新性、经济社会效益，限500字以内）</td>
						<tr>
						 <td style="height:100px;" colspan="5">
						  当前可以输入<input name="counter3" type="text" value="500" size="5"class="zishu"readonly>个汉字<br/>
                          <textarea  class="textBox"rows="4" cols="120" style="resize:none;" id="demandTarget"  name="demandTarget"
                       onKeyDown="textCounter(demandTarget,counter3,500);" onKeyUp="textCounter(demandTarget,counter3,500);" required><%out.print(rs.getString("demandTarget")); %></textarea></span> 
                          </td>
                          
						</tr>					
						<tr>
                          <td><span class="xing">*</span> 关键字：(1-5个)</td> 
                          <td colspan="5">
                          <input type="text" id="demandKeyWord1"name="demandKeyWord1" size="10"class="keyword" value='<%out.print(rs.getString("demandKeyWord1")); %>'></input>&nbsp;
                          <input type="text" id="demandKeyWord2"name="demandKeyWord2" size="10"onfocus="on_keyword1()" class="keyword" value='<%out.print(rs.getString("demandKeyWord2")); %>'></input>&nbsp;
                          <input type="text" id="demandKeyWord3"name="demandKeyWord3" size="10"onfocus="on_keyword2()" class="keyword" value='<%out.print(rs.getString("demandKeyWord3")); %>'></input>&nbsp;
                          <input type="text" id="demandKeyWord4"name="demandKeyWord4" size="10"onfocus="on_keyword3()" class="keyword" value='<%out.print(rs.getString("demandKeyWord4")); %>'></input>&nbsp;
                          <input type="text" id="demandKeyWord5"name="demandKeyWord5" size="10"onfocus="on_keyword4()" class="keyword" value='<%out.print(rs.getString("demandKeyWord5")); %>'></input></td>
						</tr>
					<tr>
					    <td>拟投入资金总额</td>
					    <td colspan="5"><input type="text" id="demandLoan"name="demandLoan"onblur="shuzi()"class="half" value='<%out.print(rs.getString("demandLoan")); %>'>万元</td>
				    </tr>
				    <tr>
						<td rowspan="2"><span class="xing">*</span>技术需求解决方式</td>
						<td colspan="4">
						<select class="full" name="demandResearchMode"id="demandResearchMode">
						<option select value='<%out.print(rs.getString("demandResearchMode")); %>'><%out.print(rs.getString("demandResearchMode")); %></option> 
						<option  value="独立研发">独立研发</option>
						<option  value="委托研发">委托研发</option>
						<option  value="合作研发">合作研发</option>
						<option  value="其他">其他</option>
						</select>
					<tr>
						<td colspan="4">合作意向单位（选填）<input type="text" name="demandCooperationUnit" size="80"class="half" value='<%out.print(rs.getString("demandCooperationUnit")); %>'></td>
					</tr>
					<tr>
						<td><span class="xing">*</span>科技活动类型</td>
						<td colspan="4">
						<select class="full" name="demandTechnology"id="demandTechnology" onchange="editon_test()">
						<option select value='<%out.print(rs.getString("demandTechnology")); %>'><%out.print(rs.getString("demandTechnology")); }rs.close();%></option> 
						<option  value="基础研究" >基础研究</option>
						<option  value="应用研究">应用研究</option>
						<option  value="试验发展">试验发展</option>
						<option  value="研究发展与成果应用">研究发展与成果应用</option>
						<option  value="技术推广与科技服务">技术推广与科技服务</option>
						<option  value="生产性活动">生产性活动</option>
						</select>
						</td>
					</tr>
					<tr name="a" id="a">
						<td >学科分类</td>
						<td colspan="4">（限基础研究填写）
						<select name="Classification1" id="Classification1" onchange="first()">
						<option select value="">-----请选择----</option> 
						 <%
						 
						String ss="select * from Xueke where Code like '__00000'";
				        ResultSet r=db.executeQuery(ss);
						try{
							int i=1;
							while(r.next())
							{
								out.print("<option id=\"q"+i+"\" value="+r.getString(1).trim()+r.getString(2).trim()
										+">"+r.getString(1).trim()+r.getString(2).trim()+"</option>");
								i=i+1;
							}
						}catch(Exception e){}
						%>
						</select>
						<select name="Classification" id="Classification" style="display:none"style="width:100px;">
						<option select value="">-----请选择----</option> 
						 <%

						String s="select * from Xueke";
				        ResultSet rr=db.executeQuery(s);
						try{
							int i=1;
							while(rr.next())
							{
								out.print("<option id=\"q"+i+"\" value="+rr.getString(1).trim()+rr.getString(2).trim()
										+">"+rr.getString(1).trim()+rr.getString(2).trim()+"</option>");
								i=i+1;
							}
						}catch(Exception e){}
						%>
						</select>
						<select name="Classification2" id="Classification2" onchange="second()">
						</select>
						<%
						
	    String sql2="select * from  Requirement where demandID= '"+RequirementID+"'";
	    ResultSet rs2=db.executeQuery(sql);
	    while(rs2.next())
	    {
			
    %>
						<select name="Classification3" id="Classification3">
						<option select value='<%out.print(rs2.getString("demandClass3")); %>'><%out.print(rs2.getString("demandClass3")); %></option> 
						</select>
						</td>
					</tr>
					<tr name="b" id="b">
						<td>需求技术所属领域（非基础研究填写）</td>
						<td colspan="4">
						<input type="text"class="full"  name="demandDomain" id="demandDomain" value='<%out.print(rs2.getString("demandDomain"));}rs2.close(); %>'></input>
						</td>
					</tr>
					<tr name="c" id="c">
						<td>需求技术应用行业（非基础研究填写）</td>
						<td colspan="4">（参见国民经济行业分类）
						<select name="Industry1" id="Industry1" onchange="first1()">
						<option select value="">-----请选择----</option> 
						 <%

						String ssl="select * from Guomin where Code like '_0000'";
				        ResultSet sr=db.executeQuery(ssl);
						try{
							int i=1;
							while(sr.next())
							{
								out.print("<option id=\"q"+i+"\" value="+sr.getString(1).trim()+sr.getString(2).trim()
										+">"+sr.getString(1).trim()+sr.getString(2).trim()+"</option>");
								i=i+1;
							}
						}catch(Exception e){}
						%>
						</select>
						<select name="Industry" id="Industry" style="display:none">
						<option select value="">-----请选择----</option> 
						 <%

						String ssss="select * from Guomin";
				        ResultSet rrrr=db.executeQuery(ssss);
						try{
							int i=1;
							while(rrrr.next())
							{
								out.print("<option id=\"q"+i+"\" value="+rrrr.getString(1).trim()+rrrr.getString(2).trim()
										+">"+rrrr.getString(1).trim()+rrrr.getString(2).trim()+"</option>");
								i=i+1;
							}
						}catch(Exception e){}
						%>
						</select>
						<select name="Industry2" id="Industry2" onchange="second1()">
						</select>
						<%
	    String sql3="select * from  Requirement where demandID= '"+RequirementID+"'";
	    ResultSet rs3=db.executeQuery(sql);
	    while(rs3.next())
	    {%>
			
						<select name="Industry3" id="Industry3" >
						<option select value='<%out.print(rs3.getString("demandEconomicClass3")); %>'><%out.print(rs3.getString("demandEconomicClass3")); %></option> 
						</select>
						</td>
					</tr>
</table>
<input type="hidden" id="demandID" name="demandID" value='<%out.print(rs3.getString("demandID")); %>'/>
<input type ="button" value ="保存修改" onclick="checkinfo();" class="subBt" />
<input type ="button" value ="返回" onclick="back();" class="subBt" />
</form>
<%
	   }rs3.close();%>
<center>
</center>
</body>
</html>
