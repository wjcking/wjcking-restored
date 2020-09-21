<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script language="C#" runat="server">
void Page_Load()
{
string strCon=Application["db_app"].ToString();

OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from db_count";
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
OleDbDataReader objReader=objCmd.ExecuteReader();
while(objReader.Read())
{
ac.InnerHtml="&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp总访问人数:&nbsp&nbsp"+objReader["AllVisit"];
}

objCon.Close();
ac2.Text=Application["user_sessions"].ToString();
ac3.Text=Application["all_count"].ToString();
}
</script>
<html>
<head>
<title>CsASPX</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="9point">
<table width="778" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="12" valign="top" bgcolor="#000000"><div align="right" class="9point"><font color="#FFFFFF">Powered 
        by ASP.NET</font></div></td>
  </tr>
  <tr> 
    <td height="76" bgcolor="#FFFFFF"><img src="images/cstop.JPG" width="472" height="230"><img src="images/clock.JPG" width="306" height="230"></td>
  </tr>
</table>
<table width="778" align="center"  border="0" cellpadding="0" cellspacing="0" class="未命名1">
  <tr class="9point"> 
    <td width="26%" height="18" valign="center" bgcolor="#e5e5e5"><div align="center"><font color="#FFFFFF"></font></div></td>
    <td width="7%" valign="center" bgcolor="#31404E"><div align="center"><a href="default.aspx"><font color="#FFFFFF">首 
        页</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="article.aspx"><font color="#FFFFFF">技术文摘</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="link.aspx"><font color="#FFFFFF">超级链接 
        </font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="down.aspx"><font color="#FFFFFF">相关下载</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="guestbook.aspx"><font color="#FFFFFF">雁过留声</font></a></div></td>
    <td width="7%" valign="center" bgcolor="#31404E"><a href="bbs/index.asp" target="_blank"><font color="#FFFFFF">社区论坛</font></a></td>
    <td width="8%" valign="center" bgcolor="#31404E"> <div align="center"><a href="friend.aspx"><font color="#FFFFFF">管理专区</font></a></div></td>
    <td width="34%" valign="center" bgcolor="#31404E">&nbsp;</td>
  </tr>
</table>
<table width="778" align="center" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="10"> <table width="100%" border="0">
        <tr> 
          <td height="462" > 
            <table width="100%" height="443" border="0">
              <tr valign="bottom" class="9point"> 
                <td height="51"> 
                  <div align="center"> </div></td>
                <td> <div align="center"><strong>Infomation</strong></div></td>
                <td><div align="center"></div></td>
                <td> <div align="center"><strong>About CS-ASPX</strong></div></td>
                <td>&nbsp;</td>
                <td><div align="center"><strong>Connect Way</strong></div></td>
                <td>&nbsp;</td>
                <td><div align="center"><strong>Special Thanks</strong></div></td>
                <td><div align="center"></div></td>
              </tr>
              <tr valign="top" class="9point"> 
                <td width="2%" height="386"> <p><img src="images/sline.JPG" width="12" height="353"><br>
                    <br>
                  </p></td>
                <td width="20%"> <p>&nbsp;</p>
                  <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非盈利的个人站点，制作本站完全出个人的目的。资料大部分从网络上获取，本站的所有资料上可以自由转载，注意：一定要保留原作者的名字！</p>
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CS-ASPX大多数是关于ASP.NET 
                    C#,JAVA等C类语言和数据库应用的文章。</p>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                  <p></p></td>
                <td width="2%" valign="top"> <p><img src="images/sline.JPG" width="12" height="353"></p></td>
                <td width="24%"> <p>&nbsp;</p>
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered by ASP.NET<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered by C#.NET<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered by JavaScript<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered by SQL server<br>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Powered by Access<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered by Win NotePad<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered By DreamwaverMX<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powered By Flash 5.0<br>
                    &nbsp;&nbsp;&nbsp;&nbsp; 
					<div id="ac" runat="server"></div>
				  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前在线人数:
				  <asp:label runat=server id="ac2" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最高在线人数:
				  <asp:label runat=server id="ac3" />
					</p>
                  
                  <p>&nbsp;<br>
                  </p></td>
                <td width="2%"><img src="images/sline.JPG" width="12" height="353"></td>
                <td width="23%"><p>&nbsp;</p>
                  <p>联系人： CsASPX<br>
                    <br>
                    wjcking@sohu.com<br>
                    wjcking@hotmail.com<br>
                    wjcking@cs-aspx.net<br>
                    <br>
                  </p>
                  <div id="Layer1" style="position:absolute; width:373px; height:179px; z-index:1; left: 42px; top: 33px;"> 
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="366" height="189" align="middle">
                      <param name="movie" value="images/banner.swf">
                      <param name="quality" value="high">
                      <param name="wmode" value="transparent">
                      <embed src="images/top2.swf" width="366" height="189" align="middle" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed></object>
                  </div>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                  <p><br>
                  </p></td>
                <td width="2%"><img src="images/sline.JPG" width="12" height="353"></td>
                <td width="23%"><p>&nbsp;</p>
                  <p><a href="http://www.aspxcn.com" target="_blank">DotNet中华网论坛</a><br>
                    <a href="http://www.wrclub.net" target="_blank">网人俱乐部论坛</a><br>
                    <a href="http://www.csdn.net" target="_blank">CSDN---BBS</a><br>
                  </p>
                  <p>特别感谢<a href="http://www.103.cn" target="_target">SkyWin</a>提供虚拟主机!</p>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                  <p align="right"><img src="images/mydog.gif" alt="Hey Am I lovely??" width="115" height="142"></p>
                  </td>
                <td width="2%"><p><img src="images/sline.JPG" width="12" height="353"> 
                  </p>
                  <p>&nbsp;</p></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="778" align="center" height="39" border="0" cellpadding="0" cellspacing="0" class="未命名1">
  <tr> 
    <td height="59" bgcolor="#31404E" width="19%"><div align="center" class="9point"> 
        <a href="myinfor.aspx"><font color="#FFFFFF"> 版权信息| cs-aspx | E-mail |关于本站</font></a><br>
        <font color="#FFFFFF"> ------------------------------------------------------------------------------<br>
        Copyright 2003--2003 cs-aspx All rights reserved </font></div></td>
  </tr>
</table>
</body>
</html>
