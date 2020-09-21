
<%@ Page Inherits="CsApp" Src="code/csapp.cs" %>

<html>
<head>
<script>
function wel()
{
window.status="欢迎进入管理页面";
timer=setTimeout("wel()",1);
}
wel();
</script>
<title>WWW.CS-ASPX.NET</title>
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
    <td height="12" valign="top" bgcolor="#FFFFFF"> <img src="images/top2.jpg" width="778" height="110"></td>
  </tr>
</table>
<table width="778" align="center"  border="0" cellpadding="0" cellspacing="0" class="未命名1">
  <tr class="9point"> 
    <td width="25%" height="18" valign="center" bgcolor="#e5e5e5"><div align="center"><font color="#FFFFFF"></font></div></td>
    <td width="7%" valign="center" bgcolor="#31404E"><div align="center"><a href="default.aspx"><font color="#FFFFFF">首 
        页</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="article.aspx"><font color="#FFFFFF">技术文摘</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="link.aspx"><font color="#FFFFFF">超级链接 
        </font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="down.aspx"><font color="#FFFFFF">相关下载</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="guestbook.aspx"><font color="#FFFFFF">雁过留声</font></a></div></td>
    <td width="8%" valign="center" bgcolor="#31404E"><a href="bbs/index.asp" target="_blank"><font color="#FFFFFF">社区论坛</font></a></td>
    <td width="43%" valign="center" bgcolor="#31404E">&nbsp;<a href="Javascript:alert('如果您没有关闭此浏览器,此页仍可进入,反之则重新登陆。\n为了安全没有设置cookies')"><font color="#FFFFFF"> 
      </font></a></td>
  </tr>
</table>

<table width="778" height="465" align="center" cellpadding="0" cellspacing="0">
  <tr > 
    <td height="463">
	<table width="100%" border="0">
      <tr class="9point"> 
        <td width="27%"> <div align="right"> 
            <p>&nbsp;</p>
            <p><img src="images/cs-aspx.gif" width="167" height="43"></p>
          </div></td>
        <td colspan="2" valign="bottom">&nbsp;&nbsp;&nbsp;您好 
          <asp:label runat=server id=lbllogname forecolor=red/> 你已经进入管理页面</td>
        <td valign="bottom">&nbsp; </td>
        <td width="11%">&nbsp;</td>
      </tr>
      <tr> 
        <td colspan="5"><hr size=1 width="90%"></td>
      </tr>
      <tr> 
        <td height="348" colspan="5"> 
          <table width="100%" height="227" border="0">
            <tr class="9point"> 
              <td width="16%">&nbsp;</td>
              <td colspan="4" rowspan="5" valign="top"><asp:datagrid ID="dgSeInfor" ForeColor="black" Font-Size=9pt Font-Name=宋体 runat="server" 
                     border=0
					 AllowCustomPaging="true"
	PageSize=20
	AllowPaging=true
                CellSpacing=0 CellPadding=4 
                     AutoGenerateColumns="False" 
                     ShowHeader="false"  
                     ShowFooter="false" 
                     GridLines="None"
> 
                  <columns>
                  <asp:templatecolumn runat="server">
                    <itemtemplate> <img src="images\mood.gif"><a href='seart.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID") %>' target='_blank'> 
                      <asp:label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ArtName") %>'/> 
                      </a> </itemtemplate>
                  </asp:templatecolumn>
                  </columns>
                </asp:datagrid>
                <p align="center">&nbsp;</td>
              <td width="0%">&nbsp;</td>
            </tr>
            <tr class="9point"> 
              <td>&nbsp;</td>
              <td width="14%">&nbsp;</td>
            </tr>
            <tr class="9point"> 
              <td height="18">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr class="9point"> 
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr class="9point"> 
              <td height="14">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table> 
      <tr> 
        <td colspan="5"><hr size=1 width="90%"></td>
      </tr>
      <tr> 
        <td colspan="3"><div id="Layer1" style="position:absolute; width:369px; height:94px; z-index:1; left: 404px; top: 18px;"> 
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="357" height="98" align="middle">
              <param name="movie" value="images/top2.swf">
              <param name="quality" value="high">
              <param name="wmode" value="transparent">
              <embed src="images/top2.swf" width="357" height="98" align="middle" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed></object>
          </div></td>
        <td colspan="2"><table width="84%" border="0" class="9point">
            <tr> 
              <td width="3%">&nbsp;</td>
              <td width="19%">&nbsp;</td>
              <td width="27%"><a href="addfile.aspx" target="_blank">管理文件</a></td>
              <td width="27%"><a href="addart.aspx" target="_blank">管理文章</a></td>
              <td width="24%"><a href="guestbook.aspx" target="_blank">管理留言</a></td>
            </tr>
          </table></td>
      </tr>
    </table>
	  
 
<table width="778" align="center" height="39" border="0" cellpadding="0" cellspacing="0" class="未命名1">
  <tr> 
    <td height="59" bgcolor="#31404E" width="19%"><div align="center" class="9point"> 
        <a href="myinfor.aspx"><font color="#FFFFFF"> 版权信息| 
        cs-aspx | E-mail |关于本站</font></a><br>
        <font color="#FFFFFF"> ------------------------------------------------------------------------------<br>
        Copyright 2003--2003 cs-aspx All rights reserved </font></div></td>
  </tr>
</table>

</body>
</html>
