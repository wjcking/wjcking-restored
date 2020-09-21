function ReMup()
{
var ReupError="";
var HtmlError=""
var ReUpValue=frmreup.areaup.value;
if(frmreup.areaup.value=="")
ReupError="回复不能为空";
else if(ReUpValue.indexOf("<")!=-1||ReUpValue.indexOf(">")!=-1) 
HtmlError="不能有“< 和 >”标签."; 
else
{
ReupError=""
HmtlError="";
ReUpValue=ReUpValue.replace(/\r?\n/g,'<br>')
ReUpValue=ReUpValue.replace(/ /g,'&nbsp;')
}

if(ReupError==""&&HtmlError=="")
{
document.frmreup.action="resemsgup.aspx";
document.frmreup.submit();
}
else
alert("WWW.CS-ASPX.NET\n---------------------------------     \n"+ReupError+"\n"+HtmlError+"\n---------------------------------    ");


}
