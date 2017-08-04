
function turnWel()
{
	document.location.href='../welcome.jsp';
}

function reSetPwd()
{
	var rlt = confirm("用户密码会被重置为123456，是否继续？");
    if(rlt == true)
    {
        return true;
    }
    else
    {
        return false;
    }
}
function check()
{

	if(homeForm.demandState2.value==""&&homeForm.chaxun.value=="")
 	{
 		alert("查询条件不能全为空！");
 		document.getElementById("chaxun").focus();
 		return false;
 	}
	else 
	{
		homeForm.submit();
	}
}