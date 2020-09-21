<%@ Page Inherits="Links" Src="code/links.cs" %>
<html>
<head>

<title>Link</title>
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
    <td height="76"><img src="images/pix003.JPG" width="767" height="129"></td>
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
<form runat="server">
<table width="778" align="center" cellspacing="0" cellpadding="0">
  <tr class="9point"> 
    <td width="38">&nbsp;</td>
    <td width="710">&nbsp;</td>
    <td width="28" height="10">&nbsp;</td>
  </tr>
  <tr class="9point"> 
    <td>&nbsp;</td>
    <td> 
      <table width="100%" border="0">
        <tr class="9point"> 
          <td width="14%" valign="bottom"><img src="images/cs-aspx.gif" width="99" height="27"></td>
          <td width="17%" valign="bottom"><div align="right">检索类型</div></td>
            <td width="13%" valign="bottom"> <asp:dropdownlist runat="server" ID="ddlTypesLink"> 
                <asp:listitem>所有</asp:listitem>
                <asp:listitem>.Net</asp:listitem>
                <asp:listitem>学习</asp:listitem>
                <asp:listitem>娱乐</asp:listitem>
                <asp:listitem>游戏</asp:listitem>
                <asp:listitem>其他</asp:listitem>
              </asp:dropdownlist> </td>
            <td width="32%" valign="bottom">检索内容
              <asp:textbox runat=server ID=tbxSeaLink 
			  style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"/></td>
          <td width="24%" valign="bottom"><asp:button ID=btnSeaLink runat=server Text="Search" 
style="border-style: solid; border-width: 1" OnClick="Btn_SeaLink" />
              &nbsp;&nbsp&nbsp;<a href="#" onClick="javascript:window.open('reclinks.htm','_blank','left=10,top=20,width=400,height=420')">推荐网址 
              </a></td>
        </tr>
      </table></td>
    <td height="10">&nbsp;</td>
  </tr>
  <tr class="9point"> 
    <td>&nbsp;</td>
    <td> 
      <hr size=1 width=100%></td>
    <td height="10">&nbsp;</td>
  </tr>
  <tr class="9point"> 
    <td>&nbsp;</td>
      <td><center>
          <table width="94%" height="196" border="0">
            <tr>
              <td height="107"> 
			  <center><asp:label id="lblMsgOut" runat="server" Font-Size="9pt"></asp:label></center>
<asp:DataGrid id="LinkShow" forecolor="black" font-size=9pt font-name=宋体 runat="server" 
                     Border=0
		width="100%"
PagerStyle-Mode="NumericPages"
OnPageIndexChanged="MyDataGrid_Page"
PagerStyle-HorizontalAlign="Right"
		PageSize=22
		AllowPaging="True"
                cellSpacing=0 cellPadding=4 
                     AutoGenerateColumns="False" 
                     showheader="false"  
                     showfooter="false" 
                     GridLines="None"	
> 
 <Columns> 
<asp:TemplateColumn runat="server">          
<ItemTemplate>
<img src="images/mood.gif"><a href='<%# DataBinder.Eval(Container.DataItem,"Url") %>' target='_blank'> 
                    <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Name") %>'/></a> 

</ItemTemplate>
</asp:TemplateColumn>



<asp:TemplateColumn runat="server">          
<ItemTemplate> 
<asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"ReadMe")%>'  /> 
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn runat="server">          
<ItemTemplate> 
<asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Score")%>'  /> 
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn runat="server">          
<ItemTemplate> 
<asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"Types")%>'  /> 
</ItemTemplate>
</asp:TemplateColumn>
</Columns>
</asp:datagrid>
			</td>
          </tr>
        </table> </center></td>
    <td height="10">&nbsp;</td>
  </tr>
  <tr class="9point"> 
    <td>&nbsp;</td>
    <td> 
      <hr size=1 width=100%></td>
    <td height="10">&nbsp;</td>
  </tr>
  <tr class="9point"> 
    <td>&nbsp;</td>
    <td><table width="100%" border="0">
          <tr class="9point"> 
            <td width="49%"><div align=right>
<asp:checkbox runat=server id="chkShowNUM" text="显示内置页数"
AutoPostBack="true"/>&nbsp;&nbsp;&nbsp;</td>
            <td width="13%" valign=bottom>第(<asp:label runat="server" id="lbPageCount"/>/
			<asp:label runat=server id="lbPageMax"/>)页</td>
            <td width="8%" valign=bottom><asp:linkbutton ID="btnFirst" runat="server"
Text="最前一页"
CommandArgument="0"
ForeColor="navy"
Font-Name="verdana" 
OnClick="LinkPagerButtonClick"
/></td>
            <td width="8%" valign=bottom><asp:linkbutton ID="btnPrev" runat="server"
Text="上一页"
CommandArgument="prev"
ForeColor="navy"
Font-Name="verdana" 
OnClick="LinkPagerButtonClick"
/></td>
            <td width="7%" valign=bottom><asp:linkbutton ID="btnNext" runat="server"
Text="下一页"
CommandArgument="next"
ForeColor="navy"
Font-Name="verdana"
OnClick="LINkPagerButtonClick"
/></td>
            <td width="8%" valign=bottom><asp:linkbutton ID="btnLast" runat="server"
Text="最后一页"
CommandArgument="last"
ForeColor="navy"
Font-Name="verdana"
OnClick="LinkPagerButtonClick"
/> </td>
          </tr>
        </table></td>
    <td height="10">&nbsp;</td>
  </tr>
</table>
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
