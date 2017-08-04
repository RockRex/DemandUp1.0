//*******形式审核*******************************
function pass()
	{
		if(homeForm.Auditdepartment.value=="")
 		{
 			alert("提交部门不能为空！");
 			document.getElementById("Auditdepartment").focus();
 			return false;
 		}
 		else
 		{
			var rlt = confirm("是否确认予以通过？");
		    if(rlt == true)
		    {
		    	document.getElementById("shenhejieguo").value = "形式审核通过";
				homeForm.submit();
		        
		    }
		    else
		    {
		        return false;
		    }
 		}
		
	}
	function nopass()
	{
		var rlt = confirm("是否确认不予通过？");
	    if(rlt == true)
	    {
	    	document.getElementById("shenhejieguo").value = "不通过";
			homeForm.submit();
	        
	    }
	    else
	    {
	        return false;
	    }
	}
	function back() {
	// 如果需要在新窗口打开注册界面；
	// window.open('Untitled-2.html');
	// 如果需要在当前窗口打开登录界面
	window.location.href = 'formalList.jsp';
}
//*******部门审核*******************************
	function pass2()
	{
		var rlt = confirm("是否确认予以通过？");
	    if(rlt == true)
	    {
	    	document.getElementById("shenhejieguo").value = "部门审核通过";
			homeForm.submit();
	        
	    }
	    else
	    {
	        return false;
	    }
		
		
	}
	function nopass2()
	{ 
		var rlt = confirm("是否确认不予通过？");
	    if(rlt == true)
	    {
	    	document.getElementById("shenhejieguo").value = "不通过";
			homeForm.submit();
	        
	    }
	    else
	    {
	        return false;
	    }
	}