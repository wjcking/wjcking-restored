<%@ Page Inherits="AddMsg" Src="code/addmsg.cs" %>
<html>
<head>

<title>cs-aspx</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="9point">
<table width="778" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="12" valign="top" bgcolor="#000000"><div align="right" class="9point"><font color="#FFFFFF">Powered 
        by ASP.NET</font></div></td>
  </tr>
  <tr> 
    <td height="12" valign="top" bgcolor="#FFFFFF"> <div class="9point"><img src="images/top_14.gif" width="778" height="132"></div></td>
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
<td width="8%" valign="center" bgcolor="#31404E"> <div align="center"><a href="bbs/" target="blank"><font color="#FFFFFF">社区论坛</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"> <div align="center"><a href="friend.aspx"><font color="#FFFFFF">管理专区</font></a></div></td>
    <td width="34%" valign="center" bgcolor="#31404E">&nbsp;</td>
  </tr>
</table>
<table width="778" align="center" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="10"> <table  align="center" width="90%" border="0">
        <tr> 
          <td class="9point">
<div id="Layer1" style="position:absolute; width:497px; height:73px; z-index:1; left: 253px; top: 23px;"> 
              <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="481" height="98" align="middle">
                <param name="movie" value="images/top1.swf">
                <param name="quality" value="high">
                <param name="wmode" value="transparent">
                <embed src="images/top1.swf" width="481" height="98" align="middle" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed></object>
            </div>
            <form  runat="server">
              <table border="0" width="100%" height="328">
                <tr class="9point"> 
                  <td height="40" colspan="3"> <p>&nbsp;</p>
                    <p><img src="images/cs-aspx.gif" width="167" height="43"></p></td>
                </tr>
                <tr class="9point"> 
                  <td height="21" colspan="3"> <hr size=1></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18"></td>
                  <td width="52%" height="18"></td>
                  <td width="24%" height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="1" align="right">署名:</td>
                  <td width="52%" height="1"> <p> 
                      <asp:textbox runat="server" id="username" size="20"
        style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; 

BORDER-BOTTOM: 1px solid" maxlength="20" />
                      <font color="#FF0000"> &nbsp;&nbsp;*</font> </p></td>
                  <td width="24%" height="1"></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18" align="right">性别:</td>
                  <td width="52%" height="18"> <asp:dropdownlist runat="server" id="sex"> 
                      <asp:listitem id="man" runat="server" value="男" checked/> 
                      <asp:listitem id="woman" runat="server" value="女"/> </asp:dropdownlist > 
                  </td>
                  <td width="24%" height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18" align="right">E-mail:</td>
                  <td width="52%" height="18"> <asp:textbox id="email" size="20"
        style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; 
BORDER-BOTTOM: 1px solid" maxlength="35" runat="server"/> </td>
                  <td width="24%" height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td height="18" align="right">OpenICQ:</td>
                  <td height="18"> <asp:textbox runat="server"  id="oicq" style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; 
BORDER-BOTTOM: 1px solid" maxlength="35" /> </td>
                  <td height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td height="18" align="right">网址:</td>
                  <td height="18"><asp:textbox runat="server" id="homepage" text="Http://"
				   style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; 
BORDER-BOTTOM: 1px solid" maxlength="100"  size=35 font-size=9pt/></td>
                  <td height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18" align="right">标题:</td>
                  <td width="52%" height="18"> <asp:textbox id="artname" size="30"
        style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; 
BORDER-BOTTOM: 1px solid" maxlength="35" runat="server"/> &nbsp; <font color="#FF0000">*</font></td>
                  <td width="24%" height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18" align="right"></td>
                  <td width="52%" height="18"> </td>
                  <td width="24%" height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18" align="right" valign="top">内容:</td>
                  <td width="52%" height="18"> <asp:textbox textmode="multiline" rows="6" id="art" cols="47"
    style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 

1px solid" maxlength="35" runat="server"/></td>
                  <td width="24%" height="18"><font color="#FF0000">*</font></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18" align="right"> <p align="left"> 
                  </td>
                  <td width="52%" height="18"> </td>
                  <td width="24%" height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td width="24%" height="18" align="right"></td>
                  <td width="52%" height="18"> <p align="center"> 
                      <asp:button id="msgsub" 
        style="border-style: solid; border-width: 1" text="提交" runat="server"
		onclick=Sub_Msg />
                      &nbsp;&nbsp; 
                      <asp:button id="reset" text="重写"
        style="border-style: solid; border-width: 1" runat="server"/>
                    </p></td>
                  <td width="24%" height="18"></td>
                </tr>
                <tr class="9point"> 
                  <td height="27" colspan="3" align="right"><table width="100%" border="0">
                      <tr> 
                        <td width="23%">&nbsp;</td>
                        <td width="77%"><table width="100%">
                            <tr> 
                              <td width="56%" height="144"><asp:requiredfieldvalidator ID="Rusername" runat="server" ErrorMessage="署名不能为空" ControlToValidate="username" ></asp:requiredfieldvalidator> 
                                <br> <asp:requiredfieldvalidator ID="Rartname" runat="server" ErrorMessage="标题不能为空" ControlToValidate="artname" ></asp:requiredfieldvalidator> 
                                <br> <br> <asp:requiredfieldvalidator ID="Rart" runat="server" ErrorMessage="留言内容不能为空" ControlToValidate="art" ></asp:requiredfieldvalidator> 
                                <br> <asp:regularexpressionvalidator ID="Rarthtml" runat="server" ErrorMessage="不能有< >标记  " ControlToValidate="art" ValidationExpression="[^<^>]{1,}" ></asp:regularexpressionvalidator> 
                                <br> <asp:regularexpressionvalidator ID="emailRegexVal"
            ControlToValidate="email"
            ErrorMessage="不是有效的电子邮件地址。"

            ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil|cc|info|com.cn)$"
            Font-Name="Arial" Font-Size="11"
            runat=server> </asp:regularexpressionvalidator></td>
                              <td width="44%"><div align="right"><img src="images/mydog.gif" alt="请把各项填写好." width="115" height="142"></div></td>
                            </tr>
                          </table></td>
                      </tr>
                    </table></td>
                </tr>
                <tr class="9point"> 
                  <td height="27" colspan="3" align="right"> <p align="center"> 
                    <hr size=1></td>
                </tr>
              </table>
            </form></td>
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
