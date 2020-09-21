function Readme_null()
{
frmreclink.UrlReadMe.value="";
}
function Select_Pro()
{
//*****************协议类型*********************
if(frmreclink.prot.options[1].selected)
{
frmreclink.Url.value="http://";
return "http://";
}
else if(frmreclink.prot.options[2].selected)
{
frmreclink.Url.value="ftp://";
return "ftp://"
}
else
{
frmreclink.Url.value="";
return "";
}

//********************end************************
}
function Sub_link()
{
var mailerror="";
var urlerror="";
var urlnerror="";
//********************dimension**********************

if(frmreclink.mail.value.indexOf("@")==-1||frmreclink.mail.value.indexOf(".")==-1)
{
mailerror="您的e-mail格式不正确\n";
}
else
mailerror="";

if(frmreclink.UrlName.value!="")
urlnerror="";
else
urlnerror="请把网址的名称填写好\n";

if(frmreclink.Url.value.indexOf("http")==-1&&frmreclink.Url.value.indexOf("ftp")==-1&&
frmreclink.Url.value.indexOf("www")==-1)
urlerror="您输入的地址不正确，必须以http,ftp开头的地址\n";
else
urlerror="";


if(mailerror==""&&urlerror==""&&urlerror=="")
{
document.frmreclink.action="addurl.aspx";
document.frmreclink.method="post";
document.frmreclink.submit();
}
else
alert("WWW.CS-ASPX.NET\n----------------------------------------------------------------------     \n"+
mailerror+urlerror+urlnerror+"----------------------------------------------------------------------     \n");

}
