function CheckPWD()
{
	var p1 = document.getElementById('userPwd').value;
	var p2 = document.getElementById('userPwd2').value;
	if(p1!=p2)
		{
			alert("两次输入的密码不一致！");
			return false;
		}
	else
		return true;
}
function checkinfo()
{
	if(homeForm.userID.value=="")
 	{
 		alert("登录账户不能为空！");
 		document.getElementById("userID").focus();
 		return false;
 	}
	if(homeForm.userPwd.value=="")
 	{
 		alert("用户密码不能为空！");
 		document.getElementById("userPwd").focus();
 		return false;
 	}
	if(homeForm.userPwd2.value=="")
 	{
 		alert("密码确认不能为空！");
 		document.getElementById("userPwd2").focus();
 		return false;
 	}
	if(homeForm.userName.value=="")
 	{
 		alert("真实姓名不能为空！");
 		document.getElementById("userName").focus();
 		return false;
 	}
	if(homeForm.perID.value=="")
 	{
 		alert("身份证号不能为空！");
 		document.getElementById("perID").focus();
 		return false;
 	}
	if(homeForm.userPwd.value.length > 20 || homeForm.userPwd.value.length < 6) 
 	{
 		alert("密码小于6位或大于20位");
 		document.getElementById("userPwd").focus();
 		return false;
 	}
	if (homeForm.userID.value.length > 20 || homeForm.userID.value.length < 6)
 	{
 		alert("登录账户不能小于6位或大于20位");
 		document.getElementById("userID").focus();
 		return false;
     }
	if (CheckCode(homeForm.userID.value) && CheckCode(homeForm.userPwd.value)&& CheckCode(homeForm.perID.value))
 	{
 		alert("用户名、密码或身份证号码有特殊字符,请重新填写！");
 		homeForm.userID.value = "";
 		homeForm.userPwd.value = "";
 		homeForm.perID.value = "";
 		return false;
     }
	else 
	{
		homeForm.submit();
	}
}
 //有特殊字符为true*****************************************************************************************************************************  
 function CheckCode(s) 
 {
     var containSpecial = RegExp(/[(\ )(\~)(\!)(\#)(\$)(\%)(\^)(\&)(\*)(\()(\))(\-)(\_)(\+)(\=)(\[)(\])(\{)(\})(\|)(\\)(\;)(\:)(\')(\")(\,)(\.)(\/)(\<)(\>)(\?)(\)]+/);
     return (containSpecial.test(s));
 }
//**************************
function back() {
	// 如果需要在新窗口打开注册界面；
	// window.open('Untitled-2.html');
	// 如果需要在当前窗口打开登录界面
	window.location.href = '../welcome.jsp';
}