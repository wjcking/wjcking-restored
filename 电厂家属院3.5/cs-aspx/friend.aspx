<%@ Page Inherits="SeTest" Src="code/setest.cs" %>
<html>
<head>

<title>WWW.CS-ASPX.NET</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="9point"
oncontextmenu="window.event.returnValue=false" 
>
<table width="778" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="12" valign="top" bgcolor="#000000"><div align="right" class="9point"><font color="#FFFFFF">Powered 
        by ASP.NET</font></div></td>
  </tr>
  <tr> 
    <td height="76" bgcolor="#003366"><img src="images/top2.jpg" width="750" height="110"></td>
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
          <td><div id="Layer1" style="position:absolute; width:368px; height:55px; z-index:1; left: 349px; top: 17px;"> 
              <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="357" height="103" align="middle">
                <param name="movie" value="images/top1.swf">
                <param name="quality" value="high">
                <param name="wmode" value="transparent">
                <embed src="images/top1.swf" width="357" height="103" align="middle" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed></object>
            </div>
            <table width="100%" height="407" border="0">
              <tr> 
                <td height="403"><form runat=server>
                    <table width="100%" border="0" class="9point">
                      <tr class="9point"> 
                        <td width="42%">&nbsp;</td>
                        <td width="30%">&nbsp;</td>
                        <td width="28%">&nbsp;</td>
                      </tr>
                      <tr class="9point"> 
                        <td height="37" class="9point"> <div align="right">会员ID:</div></td>
                        <td class="9point"> <asp:textbox ID="Fri_id" runat=server
						style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr class="9point"> 
                        <td height="39" class="9point"> <div align="right">密 码 
                            :</div></td>
                        <td class="9point"> <asp:textbox textmode=password runat=server ID=Fri_pwd
						style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr class="9point"> 
                        <td height="37" class="9point"> <div align="right">验证码:</div></td>
                        <td class="9point"> 
						<asp:textbox ID="Fri_Rand" runat=server
						style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #000000 1px double; BORDER-LEFT: #FFFFFF 1px double; BORDER-RIGHT: #FFFFFF 1px double; BORDER-TOP: #FFFFFF 1px double; COLOR: #000000"
						size=5/>
						&nbsp&nbsp;&nbsp;<asp:label runat=server ID="Fri_lblRand" /></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr class="9point"> 
                        <td><div align="right"> 
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                          </div></td>
                        <td><asp:button runat=server  ID= "submit" text="登录"
						style="border-style: solid; border-width: 1" onclick="Test"/> 
                          &nbsp&nbsp&nbsp&nbsp &nbsp <asp:button runat=server id="reset" text="重置"
						  style="border-style: solid; border-width: 1" onclick='Msg_Reset'/></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr class="9point">
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr class="9point">
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    <center>
                      <asp:label runat="server" id="lblSeMsg" />
                    </center>
                  </form>
                  
                  <p>&nbsp;</p>
                  </td>
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
