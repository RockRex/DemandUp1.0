//关键字从左到右按顺序填写校验**********************************************************************************
function on_keyword1()
{
	if(homeForm.demandKeyWord1.value==""||homeForm.demandKeyWord1.value==null)
	{
		alert("第一个关键字为空，请按顺序填写！");
		homeForm.demandKeyWord1.focus();
		return false;
	}
	else
		return true;
}
function on_keyword2()
{
	if(homeForm.demandKeyWord1.value=="")
	{
		alert("第一个关键字为空，请按顺序填写！");
		homeForm.demandKeyWord1.focus();
		return false;
	}
	else
	{
		if(homeForm.demandKeyWord2.value=="")
		{
			alert("第二个关键字为空，请按顺序填写！");
			homeForm.demandKeyWord2.focus();
			return false;
		}
		else
			return true;
	}
}
function on_keyword3()
{
	if(homeForm.demandKeyWord1.value=="")
	{
		alert("第一个关键字为空，请按顺序填写！");
		homeForm.demandKeyWord1.focus();
		return false;
	}
	else
	{
		if(homeForm.demandKeyWord2.value=="")
		{
			alert("第二个关键字为空，请按顺序填写！");
			homeForm.Keyword2.focus();
			return false;
		}
		else
		{
			if(homeForm.demandKeyWord3.value=="")
			{
				alert("第三个关键字为空，请按顺序填写！");
				homeForm.demandKeyWord3.focus();
				return false;
			}
			else
				return true;
		}
	}
}
function on_keyword4()
{
	if(homeForm.demandKeyWord1.value=="")
	{
		alert("第一个关键字为空，请按顺序填写！");
		homeForm.Keyword1.focus();
		return false;
	}
	else
	{
		if(homeForm.demandKeyWord2.value=="")
		{
			alert("第二个关键字为空，请按顺序填写！");
			homeForm.demandKeyWord2.focus();
			return false;
		}
		else
		{
			if(homeForm.demandKeyWord3.value=="")
			{
				alert("第三个关键字为空，请按顺序填写！");
				homeForm.demandKeyWord3.focus();
				return false;
			}
			else
			{
				if(homeForm.demandKeyWord4.value=="")
				{
					alert("第四个关键字为空，请按顺序填写！");
					homeForm.demandKeyWord4.focus();
					return false;
				}
				else
					return true;
			}
		}
	}
}
//需求时限验证***********************************************************************
function YearYanzheng()
{
	var a = document.getElementById('demandStart').value; 
	var b = document.getElementById('demandEnd').value;
	if(a>b)
	{
		alert("请确保起始年份小于等于终止年份！");
        document.getElementById("demandStart").focus();
        return false;
	}
	else
	{
   	    return true;
	}
}
//数值验证**************************************************************************************************
 function shuzi()    
{    
 var plansum = document.getElementById('demandLoan').value;    
 var pattern =/^(([1-9]\d{0,9})|0)(\.\d{1,2})?$/;    
 flag = pattern.test(plansum);    
 if(flag)    
 {
   	 return true;    
 }    
 else    
 {
	 alert("请输入数字数值！");
	 document.getElementById("demandLoan").focus();
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

//隐藏或不可编辑***********************************************************************************************
function on_test()
{
	document.getElementById("b").disabled=true;
    document.getElementById("c").disabled=true;
    document.getElementById("a").disabled=false;
    //document.getElementById("b").style.display="none";
    //document.getElementById("c").style.display="none";
    //document.getElementById("a").style.display="block";
}
function change()
{
	document.getElementById("b").disabled=false;
    document.getElementById("c").disabled=false;
    document.getElementById("a").disabled=true;
    //document.getElementById("b").style.display="block";
    //document.getElementById("c").style.display="block";
    //document.getElementById("a").style.display="none";
}
function editon_test()
{
	var obj = document.getElementById("demandTechnology");
	if(obj=="基础研究")
	{
		document.getElementById("b").disabled=true;
	    document.getElementById("c").disabled=true;
	    document.getElementById("a").disabled=false;
		
	}
	else
	{
		document.getElementById("b").disabled=false;
	    document.getElementById("c").disabled=false;
	    document.getElementById("a").disabled=true;
	}
}
//学科分类的三级联动******************************************************************************************
function first()
{
	var obj = document.getElementById("Classification");//全部值
	var obj1 = document.getElementById("Classification1");//第一个框的值
	var obj2 = document.getElementById("Classification2");
	var obj3 = document.getElementById("Classification3");
	obj2.options.add(new Option("----请选择----","----请选择----"));
	for(var i=obj3.length-1;i>=0;i--)
	{
		obj3.options.remove(i);
	}
	for(var i=obj2.length-1;i>0;i--)
	{
		obj2.options.remove(i);
	}
	for(var i=1;i<obj.length;i++)
	{
		if(obj[i].value.substring(0,3)==obj1.value.substring(0,3)&&obj[i].value.substring(5,7)==obj1.value.substring(5,7)&&obj[i].value!=obj1.value)
		{
			obj2.options.add(new Option(obj[i].value,obj[i].value));
		}
	}
}
function second()
{
	var obj=document.getElementById("Classification");//全部值
	var obj2=document.getElementById("Classification2");//第二个框的值
	var obj3=document.getElementById("Classification3");
	for(var i=obj3.length-1;i>=0;i--)
	{
		obj3.options.remove(i);
	}
	for(var i=1;i<obj.length;i++)
	{
		if(obj[i].value.substring(0,5)==obj2.value.substring(0,5))
		{
			obj3.options.add(new Option(obj[i].value,obj[i].value));
		}
	}
}
//国民经济行业分类的三级联动******************************************************************************************
function first1()
{
	var obj = document.getElementById("Industry");//全部值
	var obj1 = document.getElementById("Industry1");//第一个框的值
	var obj2 = document.getElementById("Industry2");
	var obj3 = document.getElementById("Industry3");
	obj2.options.add(new Option("----请选择----","----请选择----"));
	for(var i=obj3.length-1;i>=0;i--)
	{
		obj3.options.remove(i);
	}
	for(var i=obj2.length-1;i>0;i--)
	{
		obj2.options.remove(i);
	}
	for(var i=1;i<obj.length;i++)
	{
		if(obj[i].value.substring(0,1)==obj1.value.substring(0,1)&&obj[i].value.substring(3,5)==obj1.value.substring(3,5)&&obj[i].value!=obj1.value)
		{
			obj2.options.add(new Option(obj[i].value,obj[i].value));
		}
	}
}
function second1()
{
	var obj=document.getElementById("Industry");//全部值
	var obj2=document.getElementById("Industry2");//第二个框的值
	var obj3=document.getElementById("Industry3");
	for(var i=obj3.length-1;i>=0;i--)
	{
		obj3.options.remove(i);
	}
	for(var i=1;i<obj.length;i++)
	{
		if(obj[i].value.substring(0,3)==obj2.value.substring(0,3))
		{
			obj3.options.add(new Option(obj[i].value,obj[i].value));
		}
	}
}

//提交校验***********************************************************************************************
function checkinfo()
{
	if(homeForm.demandName.value=="")
	{
		alert("技术需求名称不能为空！");
		homeForm.demandName.focus();
		return false;
	}
	if(homeForm.demandMain.value=="")
	{
		alert("主要问题不能为空！");
		homeForm.demandMain.focus();
		return false;
	}
	if(homeForm.demandKey.value=="")
	{
		alert("技术关键不能为空！");
		homeForm.demandKey.focus();
		return false;
	}
	if(homeForm.demandTarget.value=="")
	{
		alert("预期目标不能为空！");
		homeForm.demandTarget.focus();
		return false;
	}
	if(homeForm.demandKeyWord1.value=="")
	{
		alert("关键字不能为空！");
		homeForm.demandKeyWord1.focus();
		return false;
	}
	if(homeForm.demandLoan.value=="")
	{
		alert("拟投入资金总额不能为空！");
		homeForm.demandLoan.focus();
		return false;
	}
	if(homeForm.demandResearchMode.value=="")
	{
		alert("技术需求解决方式不能为空！");
		homeForm.demandResearchMode.focus();
		return false;
	}
	if(homeForm.demandTechnology.value=="")
	{
		alert("科技活动类型不能为空！");
		homeForm.demandTechnology.focus();
		return false;
	}
	else
	{
		alert("需求信息审核后不能修改！确定提交吗？");
		document.getElementById("submitType").value="提交";
		homeForm.submit();
	}
}
function checkinfo1()
{
	document.getElementById("submitType").value="保存";
	homeForm.submit();
}
//离开页面的弹窗提醒************************************
function checkLeave(){
	event.returnValue="离开当前页面会导致丢失未保存的数据。";
}