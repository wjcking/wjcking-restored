<%@ Page Inherits="UMShow" Src="code/guestbook.cs" %>
<html>
<head>
<title>GuestBook</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body bgcolor="#FFFFFF" background="images/bg2.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="9point">
<table width="778" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="12" valign="top" bgcolor="#000000"><div align="right" class="9point"><font color="#FFFFFF">
	
	Powered 
        by ASP.NET</font></div></td>
  </tr>
  <tr> 
    <td height="76"><img src="images/gflypic.jpg" width="778" height="139"></td>
  </tr>
</table>
</center>



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
<form runat="server">
             
<table width="778" height="223" align="center" cellpadding="0" cellspacing="0">
  <tr class="9point"> 
    <td height="215" colspan="5">
<table width="100%" border="0">
        <tr class="9point"> 
          <td width="22%"> 
            <div align="right">
              <p>&nbsp;</p>
              <p><img src="images/cs-aspx.gif" width="99" height="27"></p>
            </div></td>
          <td width="47%" valign="bottom"><div align="right">----&gt;&gt;</div></td>
          <td width="31%" valign="bottom">[<a href="addmsg.aspx">Add Msg</a>]&nbsp;[<a href="javascript:location.reload()">Refresh</a>] 
            [<a href="friend.aspx">Admin</a>]</td>
        </tr>
        <tr> 
          <td colspan="3"><hr size=1 width="90%"></td>
        </tr>
        <tr> 
          <td height="191" colspan="3"><center><br>
<asp:DataGrid id="UserMsgShow"
			 forecolor="black"
			 font-size=9pt
			  runat="server" 
Border=0
		width="90%"
		style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"
PagerStyle-Mode="NumericPages"
OnPageIndexChanged="MyDataGrid_Page"
PagerStyle-HorizontalAlign="Right"
		AllowPaging="True"
               PageSize="15"
                cellSpacing=0 cellPadding=4 
                     AutoGenerateColumns="False" 
                     showheader="false"  
                     showfooter="false" 
                     GridLines="None"
					 		 
> 
     

 <Columns> 
<asp:TemplateColumn runat="server">          
<ItemTemplate><center>
              <table width="96%" height="22%"  border=1 cellpadding=0 cellspacing=0 bordercolor=#111111 class="9point" style='border-collapse: collapse'>
              <tr> 
                <td height="14" width="56" align="center"><font face="宋体">署名</font></td>
                <td height="14" width="77" align="center"> 
                  <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Username") %>'/></td>
                <td height="14" width="31" align="center"><font face="宋体">性别</font></td>
                <td height="14" width="50" align="center"> 
                  <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Sex") %>'/></td>
                <td height="14" width="54" align="center"><font face="宋体"><a href="mailto:<%# DataBinder.Eval(Container.DataItem,"Email") %>">E-mail</a></font></td>
                <td height="14" width="60" align="center"><font face="宋体">OpenICQ</font></td>
                <td width="112" align="center">
				<asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"OpenICQ") %>'/></td>
                <td height="14" width="68" align="center"> <a href='
<%# DataBinder.Eval(Container.DataItem,"Homepage") %>' target="_blank">HomePage</a>&nbsp; </td>
                <td height="14" width="54" align="center"><font face="宋体">日期</font></td>
                <td height="14" width="158" align="center"> 
                  <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Dtime") %>'/></td>
              </tr>
              <tr> 
                <td height="14" width="56" align="center"><font face="宋体">标题</font></td>
                <td height="14" colspan="9" align="center"> 
                  <p align="left"> 
                    <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Title") %>'/></td>
              </tr>
              <center>
                <tr> 
                  <td height="29" width="56"></td>
                  <td height="29" colspan="9" valign="middle"> <div align="left"> 
                      <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Message") %>'/></div></td>
                </tr>
                <tr> 
                  <td width="56" valign="top"> <p align="center"><font face="宋体"> 
                      <a href='seremsg.aspx?id=<%# DataBinder.Eval(Container.DataItem,"ID") %>'>回复</a></font></p>
                    <div align="center"><font face="宋体"> </font></div></td>
                  <td colspan="9" valign="center"> <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Remsg") %>'/></td>
                </tr>
              </center>
            </table>
			  <br><br>
			  	  </ItemTemplate>
</asp:TemplateColumn>
</Columns> 
</asp:datagrid> </td>
        </tr>
        <tr> 
          <td colspan="3"><hr size=1 width="90%"></td>
        </tr>
        <tr> 
          <td colspan="3"><table width="100%" height="34" border="0">
              <tr class="9point"> 
                <td width="60%" height="27" valign="top"> 
                  <div align="right">
<asp:Checkbox id="chkShowNUM" runat="server" Text="显示内置页数" AutoPostBack="true"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
                  
                <td width="8%"> 
                  <asp:linkbutton ID="btnMsgF" runat="server"
Text="最前一页"
CommandArgument="0"
ForeColor="navy"
Font-Name="verdana" 
OnClick="MsgPageBtn"
/></td>
                  
                <td width="7%"> 
                  <asp:linkbutton ID="btnMsgP" runat="server"
Text="上一页"
CommandArgument="prev"
ForeColor="navy"
Font-Name="verdana" 
OnClick="MsgPageBtn"
/></td>
                  
                <td width="7%"> 
                  <asp:linkbutton ID="btnMsgN" runat="server"
Text="下一页"
CommandArgument="next"
ForeColor="navy"
Font-Name="verdana" 
OnClick="MsgPageBtn"
/></td>
                  
                <td width="8%"> 
                  <asp:linkbutton ID="btnMsgL" runat="server"
Text="最后一页"
CommandArgument="last"
ForeColor="navy"
Font-Name="verdana"
OnClick="MsgPageBtn"
/></td>
                  
                <td width="8%">&nbsp;</td>
                </tr>
              </table></td>
        </tr>
      </table>
	  
    </td>
  </tr> 
</form>
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
