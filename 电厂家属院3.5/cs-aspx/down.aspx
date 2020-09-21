<%@ Page Inherits="Down" Src="code/down.cs" %>
<html>
<head>
<script language="JavaScript">
function winopen(downshow)
{
window.open("downshow.aspx?id="+downshow,'','scrollbars=yes,direction=yes,width=500,height=450');
}
</script>
<title>Down...............</title>
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
    <td height="12" valign="top" bgcolor="#FFFFFF"> <img src="images/downpic.jpg" width="778" height="142"></td>
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
    <td width="8%" valign="center" bgcolor="#31404E"><a href="down.aspx">&nbsp;<font color="#FFFFFF">相关下载</font></a></td>
    <td width="8%" valign="center" bgcolor="#31404E"><div align="center"><a href="guestbook.aspx"><font color="#FFFFFF">雁过留声</font></a></div></td>
    <td width="7%" valign="center" bgcolor="#31404E"><a href="bbs/index.asp" target="_blank"><font color="#FFFFFF">社区论坛</font></a></td>
    <td width="8%" valign="center" bgcolor="#31404E"> <div align="center"><a href="friend.aspx"><font color="#FFFFFF">管理专区</font></a></div></td>
    <td width="34%" valign="center" bgcolor="#31404E">&nbsp;</td>
  </tr>
</table>
<table width="778" height="406" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="202" height="40" valign="bottom" bgcolor="#000000">&nbsp;</td>
    <td width="30" bgcolor="#F3F3F3" class="9point">&nbsp;</td>
    <td width="544" valign="top" bgcolor="#F3F3F3" class="9point"><strong><font color="#F7790F" face="Arial, Helvetica, sans-serif"><br>
      WELCOME</font><font face="Arial, Helvetica, sans-serif">DOWNLOAD</font></strong> 
      <hr align="left" width="99%" size=1></td>
  </tr>
  <tr> 
    <td height="364" valign="bottom" bgcolor="#D9D9D9"> 
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p align="center">&nbsp;</p></td>
    <td colspan="2" bgcolor="#F3F3F3"> <form runat="server">
        <table width="100%" border="0">
          <tr> 
            <td width="5%" height="287">&nbsp;</td>
            <td width="95%" valign="top">
              <asp:datagrid ID="dgDown" ForeColor="black" Font-Size=9pt Font-Name=宋体 runat="server" 
                     border=0
		Width="100%"
		PageSize=12
		AllowPaging="True"
PagerStyle-Mode="NumericPages"
OnPageIndexChanged="MyDataGrid_Page"
PagerStyle-HorizontalAlign="Right"

                CellSpacing=0 CellPadding=4 
                     AutoGenerateColumns="False" 
                     ShowHeader="true"  
                     ShowFooter="true" 
                     GridLines="None"	> 
              <columns>
                  <asp:templatecolumn runat="server">
                <itemtemplate>
                      <TABLE style="BORDER-COLLAPSE: collapse" 
                        borderColor=#d8d8d8 cellSpacing=0 cellPadding=3 
                        width=475 align=center border=1>
                        <TBODY>
                          <TR class="9point"> 
                            <TD colSpan=4 align=middle> <DIV align=left><img src="images/mood.gif">&nbsp; 
                                <a href=javascript:winopen('<%# DataBinder.Eval(Container.DataItem,"ID")%>') 
								title='点击统计:<%# DataBinder.Eval(Container.DataItem,"Visit") %>'>
                                <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"FileTitle") %>'></asp:label>
                                </a> </DIV></TD>
                            <TD width="15%" align=middle bgColor=#f5f5f5> <DIV align=center>更新日期</DIV></TD>
                            <TD width="20%" align=middle> <DIV align=center> 
                                <asp:label 

runat=server text='<%# String.Format ("{0:yyyy-MM-dd}",DataBinder.Eval(Container.DataItem,"DTime"))%>'
/>
                              </DIV></TD>
                          </TR>
                        <TBODY>
                          <TR class="9point"> 
                            <TD 
                            width="15%" bgColor=#f5f5f5 
                            style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"> 
                              <DIV align=center>软件类别</DIV></TD>
                            <TD 
                            width="18%" 
                            style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"> 
                              <DIV align=center> 
                                <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"Types") %>'></asp:label>
                              </DIV></TD>
                            <TD 
                            width="15%" bgColor=#f5f5f5 
                            style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"> 
                              <DIV align=center>软件大小</DIV></TD>
                            <TD 
                            width="14%" 
                            style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"> 
                              <DIV align=center> 
                                <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"FileSize") %>'></asp:label>
                              </DIV></TD>
                            <TD 
                            width="15%" bgColor=#f5f5f5 
                            style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"> 
                              <DIV align=center>推荐等级</DIV></TD>
                            <TD 
                            width="20%" 
                            style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"> 
                              <font color="#000000"> 
                              <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"Score") %>'></asp:label>
                              </font></DIV></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                      <br>
                    </itemtemplate> </asp:templatecolumn> </columns>
            </asp:datagrid> </td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><hr align="left" width="99%" size=1></td>
          </tr>
          <tr> 
            <td height="18">&nbsp;</td>
            <td><table width="100%" border="0">
                <tr class="9point"> 
                  <td width="10%">&nbsp;</td>

                  <td width="14%">
<asp:checkbox runat=server id="chkShowNUM" text="显示内置页数" 
AutoPostBack="true"/></td>

                  <td width="9%" valign=bottom>第(<asp:label runat=server id="lbPageCount"/>/
				  <asp:label runat=server id="lbPageMax"/>)页</td>
                  <td width="8%" valign=bottom> 
                    <div align="center">
                      <asp:linkbutton ID="btnFileF" runat="server"
Text="最前一页"
CommandArgument="0"
ForeColor="navy"
Font-Name="verdana" 
OnClick="FileBtn"
/></div></td>
                  <td width="8%" valign=bottom> 
                    <div align="center"> 
                      <asp:linkbutton ID="btnFileP" runat="server"
Text="上一页"
CommandArgument="prev"
ForeColor="navy"
Font-Name="verdana" 
OnClick="FileBtn"
/></div></td>
                  <td width="8%" valign=bottom> 
                    <div align="center" >
                      <asp:linkbutton ID="btnFileN" runat="server"
Text="下一页"
CommandArgument="next"
ForeColor="navy"
Font-Name="verdana" 
OnClick="FileBtn"
/></div></td>
                  <td width="8%" valign=bottom> 
                    <div align="center" >
                      <asp:linkbutton ID="btnFileL" runat="server"
Text="最后一页"
CommandArgument="last"
ForeColor="navy"
Font-Name="verdana"
OnClick="FileBtn"
/></div></td>
                </tr>
              </table></td>
          </tr>
        </table>
      </form></td>
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
