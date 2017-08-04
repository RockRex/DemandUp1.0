
//数值验证**************************************************************************************************
 function shuzi()    
{    
 var plansum = document.getElementById('unitFax').value;    
 var pattern =/^(([1-9]\d{0,9})|0)(\.\d{1,2})?$/;    
 flag = pattern.test(plansum);    
 if(flag)    
 {
   	 return true;    
 }    
 else    
 {
	 alert("请输入数字数值！");
	 document.getElementById("unitFax").focus();
	 return false;    
 }    
} 
//邮箱验证*********************************************************************************
 function verifyAddress()    
{    
  var email = document.getElementById('unitEmail').value;    
  var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;    
  flag = pattern.test(email);    
  if(flag)    
  {    
 	 
    	 return true;    
  }    
  else    
  {
	  alert("邮箱格式有误!！");
	  document.getElementById("unitEmail").focus();
	  return false;    
  }
} 
 //手机号码验证*****************************************************************************
function CheckPhone(){
	var phone = document.getElementById('unitMPhone').value;
 	var pattern=/^1(3|4|5|7|8)\d{9}$/;//1 然后34578中的一位，然后没有限制，符合现实
 	flag=pattern.test(phone);
 	if(flag)
 	{
 		 
 	   	 return true;    
 	}
    else    
 	 {    
    	alert("手机号码格式错误!！");
    	document.getElementById("unitMPhone").focus();
    	return false;    
 	 
     } 
 }
 //电话验证*******************************************************************************
 function checkTel(){
 	 var telphone = document.getElementById('unitPhone').value;  
 	 var pattern = /^(\(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}$/;
 	 flag = pattern.test(telphone);
 	 
 	 if(flag)    
 	 {    
 		
 	   	 return true;    
 	 }    
 	 else    
 	 {
 		alert("电话号码格式错误!！");
    	document.getElementById("unitPhone").focus();
    	return false;  
 	 }  

 } 
//邮编验证*********************************************************************************
 function youbiantest()    
 { 
 	 var youbian = document.getElementById('unitZipCode').value;  
 	 var pattern =/^[0-9]{6}$/;   
 	 flag = pattern.test(youbian);
 	 
 	 if(flag)    
 	 {    
 		
 	   	 return true;    
 	 }    
 	 else    
 	 {
 		alert("邮编格式错误!！");
    	document.getElementById("unitZipCode").focus();
    	return false; 
 	 }  
 }
 //网址验证*********************************************************************************
 function urltest() 
 {    
   var email = document.getElementById('unitURL').value;    
   var pattern = /^www.([a-zA-Z0-9_-])+([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;    
   flag = pattern.test(email);    
   if(flag)    
   {    
  	 
     	 return true;    
   }    
   else    
   {
 	  alert("网址格式有误!！");
 	  document.getElementById("unitURL").focus();
 	  return false;    
   }
 } 
//限制500字***********************************************************************************************
 function textCounter(field, countfield, maxlimit) {// 函数，3个参数，表单名字，表单域元素名，限制字符；
	 if (field.value.length > maxlimit)//如果元素区字符数大于最大字符数，按照最大字符数截断；
		 field.value = field.value.substring(0, maxlimit);
	 else//在记数区文本框内显示剩余的字符数；
		 countfield.value = maxlimit - field.value.length;
}
//验证***************************************************************************************************************
 function checkinfo()
 {
 	if(homeForm.unitName.value=="")
 	{
 			alert("机构全称不能为空！");
 			homeForm.unitName.focus();
 			return false;
 		}
 		if(homeForm.unitDepartment.value=="")
 		{
 			alert("归口管理部门不能为空！");
 			homeForm.unitDepartment.focus();
 			return false;
 		}
 		if(homeForm.unitAddress.value=="")
 		{
 			alert("通讯地址不能为空！");
 			homeForm.unitAddress.focus();
 			return false;
 		}
 		if(homeForm.unitCity.value=="")
 		{
 			alert("所在地域不能为空！");
 			homeForm.unitCity.focus();
 			return false;
 		}
 		if(homeForm.unitURL.value=="")
 		{
 			alert("网  址不能为空！");
 			homeForm.unitURL.focus();
 			return false;
 		}
 		if(homeForm.unitEmail.value=="")
 		{
 			alert("电子信箱不能为空！");
 			homeForm.unitEmail.focus();
 			return false;
 		}
 		if(homeForm.unitLPeople.value=="")
 		{
 			alert("法人代表不能为空！");
 			homeForm.unitLPeople.focus();
 			return false;
 		}
 		if(homeForm.unitZipCode.value=="")
 		{
 			alert("邮政编码不能为空！");
 			homeForm.unitZipCode.focus();
 			return false;
 		}
 		if(homeForm.unitCPeople.value=="")
 		{
 			alert("联系人不能为空！");
 			homeForm.unitCPeople.focus();
 			return false;
 		}
 		if(homeForm.unitPhone.value=="")
 		{
 			alert("固定电话不能为空！");
 			homeForm.unitPhone.focus();
 			return false;
 		}
 		if(homeForm.unitMPhone.value=="")
 		{
 			alert("手机号码不能为空！");
 			homeForm.unitMPhone.focus();
 			return false;
 		}
 		if(homeForm.unitFax.value=="")
 		{
 			alert("传真不能为空！");
 			homeForm.unitFax.focus();
 			return false;
 		}
 		if(homeForm.unitAttribute.value=="")
 		{
 			alert("机构属性不能为空！");
 			homeForm.unitAttribute.focus();
 			return false;
 		}

 		if(homeForm.unitIntroduce.value=="")
 		{
 			alert("机构简介不能为空！");
 			homeForm.unitIntroduce.focus();
 			return false;
 		}
 		else 
 		{
 			homeForm.submit();
 		}
 }


//离开页面的弹窗提醒************************************
function checkLeave(){
	event.returnValue="离开当前页面会导致丢失未保存的数据。";
}
//**************************
function back() {
	// 如果需要在新窗口打开注册界面；
	// window.open('Untitled-2.html');
	// 如果需要在当前窗口打开登录界面
	window.location.href = '../welcome.jsp';
}