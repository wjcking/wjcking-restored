
var LiveTime=new Date();
//**********Public dimension*********

function Dtime()
{

var Year=LiveTime.getYear();
var Month=LiveTime.getMonth()+1;
var Date=LiveTime.getDate();

var Hour=LiveTime.getHours();
var Minute=LiveTime.getMinutes();
var Second=LiveTime.getSeconds();

//**********ie,nc*************
if(navigator.userAgent.indexOf("MSIE")==-1)
Year=1900+Year;
//*********am,pm**************
var apm;
if(Hour>=12)
{ Hour-=12;apm="PM";}
else
apm="AM";

Hour=(Hour==0)?12:Hour
if(Minute<10)
Minute="0"+Minute;

return Year+"-"+Month+"-"+Date+"&nbsp"+Hour+":"+Minute+":"+Second+"&nbsp"+apm;
}

//*************Get UserDate**************************
function UserBrowser()
{
var UserBrowser;

if(navigator.userAgent.indexOf("MSIE 3")!=-1)
UserBrowser="IE3.x";
else if(navigator.userAgent.indexOf("MSIE 4")!=-1)
UserBrowser="IE4.x";
else if(navigator.userAgent.indexOf("MSIE 5")!=-1)
UserBrowser="IE5.x";
else if(navigator.userAgent.indexOf("MSIE 6")!=-1)
UserBrowser="IE6.x";

else if(navigator.userAgent.indexOf("Mozilla/4")!=-1)
UserBrowser="NC4.X";
else if(navigator.userAgent.indexOf("Mozilla/5")!=-1)
UserBrowser="NC5.X";
else if(navigator.userAgent.indexOf("Mozilla/6")!=-1)
UserBrowser="NC6.X";
else if(navigator.userAgent.indexOf("Mozilla/7")!=-1)
UserBrowser="NC7.X";

else UserBrowser="?";
return UserBrowser;
}
//*************Get UserBrowser**************************
function UserSystem()
{
var UserSys="";
if(navigator.appVersion.indexOf("Windows 98")!=-1)
UserSys="WIN98";
else if(navigator.appVersion.indexOf("Windows NT")!=-1)
UserSys="WINNT"

return UserSys;
}
//***************Get UserSystem**********************



function MsgSubmit()
{
var UserNameError="";
var EmailError="";
var ArtNameError="";
var ArtError="";
var ArtHtmlError="";
//**********************

var ArtValue;
ArtValue=livemsg.art.value;

//***************************

if(livemsg.username.value=="")
UserNameError="请输入你的署名";
else
{
UserNameError="";
livemsg.username.value=livemsg.username.value.replace(/\r?\n/g,'<br>');
livemsg.username.value=livemsg.username.value.replace(/ /g,'&nbsp;');
livemsg.username.value=livemsg.username.value.replace('<','&lt');
livemsg.username.value=livemsg.username.value.replace('>','&gt');
}

if(livemsg.email.value!="")
{
if(livemsg.email.value.indexOf("@")==-1||livemsg.email.value.indexOf(".")==-1)
EmailError="邮件格式不正确";

else
{
ArtNameError="";
livemsg.email.value=livemsg.email.value.replace(/\r?\n/g,'<br>');
livemsg.email.value=livemsg.email.value.replace(/ /g,'&nbsp;');
livemsg.email.value=livemsg.email.value.replace('<','&lt');
livemsg.email.value=livemsg.email.value.replace('>','&gt');
}
}
if(livemsg.ArtName.value=="")
ArtNameError="请输入标题";
else
{

ArtNameError="";

livemsg.ArtName.value=livemsg.ArtName.value.replace(/\r?\n/g,'<br>');
livemsg.ArtName.value=livemsg.ArtName.value.replace(/ /g,'&nbsp;');
livemsg.ArtName.value=livemsg.ArtName.value.replace('<','&lt');
livemsg.ArtName.value=livemsg.ArtName.value.replace('>','&gt');

}

if(livemsg.art.value=="")
ArtError="好歹也得说上两句啊？";
else if(ArtValue.indexOf("<")!=-1||ArtValue.indexOf(">")!=-1)
ArtHtmlError="非常抱歉,这里不能输入HTML标签"
else
{
ArtError="";
ArtHtmlError="";

ArtValue=ArtValue.replace(/\r?\n/g,'<br>');
ArtValue=ArtValue.replace(/ /g,'&nbsp;');

}

if(UserNameError==""&&EmailError==""&&ArtNameError==""&&ArtError==""&&ArtHtmlError=="")
{
livemsg.dtime.value=Dtime();
livemsg.system.value=UserSystem();
livemsg.browser.value=UserBrowser();
livemsg.hdnArt.value=ArtValue;

document.livemsg.action="livemsgout.aspx";
document.livemsg.submit();
}
else
alert("WWW.CS-ASPX.NET\n---------------------------------------------------     \n"+
UserNameError+"\n"+EmailError+"\n"+ArtNameError+"\n"+ArtError+"\n"+ArtHtmlError+
"\n---------------------------------------------------     ")

}
//****************Get User msg**********************
//******************the end**************************



