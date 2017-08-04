function SetWinHeight(obj) 
{ 
var win=obj; 
if (document.getElementById) 
{ 
if (win && !window.opera) 
{ 
if (win.contentDocument && win.contentDocument.body.offsetHeight) 
win.height = win.contentDocument.body.offsetHeight; 
else if(win.Document && win.Document.body.scrollHeight) 
win.height = win.Document.body.scrollHeight; 
} 
} 
} 
function turnUrl(Url)
{
document.frames["mfrmright"].location.href =Url; 
}
function turnAdd()
{
window.location.href = 'unitDemandAdd.jsp';
}
function turnWel()
{
	window.parent.location.href='../welcome.jsp';
}