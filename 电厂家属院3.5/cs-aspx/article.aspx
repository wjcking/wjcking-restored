<%@ Page Inherits="Article" Src="code\article.cs" %>
<html>
<head>

<title>Article</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="9point" 
>
<table width="778" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="12" valign="top" bgcolor="#000000"><div align="right" class="9point"><font color="#FFFFFF">Powered 
        by ASP.NET</font></div></td>
  </tr>
  <tr> 
    <td height="76"><img src="images/titlebg.jpg" width="778" height="180"></td>
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
  <table width="778" height="62" align="center" cellpadding="0" cellspacing="0" class="9point">
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td width="223">&nbsp;</td>
      <td width="81">&nbsp;</td>
      <td width="56">&nbsp;</td>
      <td width="70">&nbsp;</td>
      <td width="59">&nbsp;</td>
      <td width="62">&nbsp;</td>
      <td height="10">&nbsp;</td>
    </tr>
    <tr> 
      <td width="55">&nbsp;</td>
      <td width="110"><div align="right"><img src="images/cs-aspx.gif" width="99" height="27"></div></td>
      <td colspan="6"><table width="100%" border="0">
          <tr class="9point"> 
            <td width="17%"><div align="right">检索类型</div></td>
            <td width="27%"><asp:dropdownlist ID="ddlTypes" runat=server >
                <asp:listitem Value="所有文章"/>
				<asp:listitem Value="ASP.NET应用文章"/>
				<asp:listitem Value="C Sharp应用文章"/>
				<asp:listitem Value="Java应用文章"/>
				<asp:listitem Value="数据库应用文章"/>
				<asp:listitem Value="其他应用文章"/>
              </asp:dropdownlist></td>
            <td width="36%">文章检索
              <asp:textbox ID=tbxSearch runat=server font-size=9pt Font-Name="宋体"
			  style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" />
            </td>
            <td width="20%"> 
              <asp:button ID=btnSearch runat=server Text="Search"
	style="border-style: solid; border-width: 1" OnClick="ArtSearch"/>
            </td>
          </tr>
        </table> </td>
      <td width="61" height="10">&nbsp;</td>
    </tr>
    <tr> 
      <td height="10" colspan="9"><hr align="center" width="90%" size=1 color=black></td>
    </tr>
    <tr> 
      <td height="10" colspan="9"><table width="778" height="218" border="0">
          <tr> 
            <td width="7%" height="99">&nbsp;</td>
            <td width="86%">
			<center><asp:label id="lblErrorOut" runat="server" Font-Size="9pt"></asp:label></center>
			<asp:datagrid ID="dgArt" ForeColor="black" Font-Size=9pt Font-Name=宋体 runat="server" 
                     border=0
		Width="100%"
		PageSize=22
		AllowPaging="True"
		PagerStyle-Mode="NumericPages"
OnPageIndexChanged="MyDataGrid_Page"
PagerStyle-HorizontalAlign="Right"

                CellSpacing=0 CellPadding=4 
                     AutoGenerateColumns="False" 
                     ShowHeader="true"  
                     ShowFooter="true" 
                     GridLines="None"
		
		> 
                <columns>
                <asp:templatecolumn runat="server">
                  <itemtemplate> <img src="images\mood.gif" > <a href='art.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID") %>' target='_blank'> 
                    <asp:label runat=server 
Text='<%# DataBinder.Eval(Container.DataItem,"ArtName") %>'/></a> 
                    <asp:label runat=server  Text="[" ForeColor="#808080"/> 
                    <asp:label runat=server forecolor="#808080"
Text='<%# String.Format ("{0:yyyy-MM-dd}",DataBinder.Eval(Container.DataItem,"DTime"))%>'  /> 
                    <asp:label runat=server  Text="]" forecolor="#808080"/> </itemtemplate>
                </asp:templatecolumn>
    
                <asp:templatecolumn runat="server">
                  <itemtemplate> 
                    <asp:label runat=server
Text='<%# DataBinder.Eval(Container.DataItem,"Writer") %>' /> </itemtemplate>
                </asp:templatecolumn>
                <asp:templatecolumn runat="server">
                  <itemtemplate> [
                    <asp:label runat=server
Text='<%# DataBinder.Eval(Container.DataItem,"Types") %>' />&nbsp;] </itemtemplate>
                </asp:templatecolumn>
                <asp:templatecolumn runat="server">
                  <itemtemplate> 
                    <asp:label runat=server Text="&nbsp&nbsp&nbsp&nbsp"/> 
                    <asp:label runat=server
Text='<%# DataBinder.Eval(Container.DataItem,"Visit") %>' /> </itemtemplate>
                </asp:templatecolumn>
                </columns>
              </asp:datagrid>
			  
			   </td>
            <td width="7%">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td height="10" colspan="9"><div align="left"></div>
        <hr align="center" width="90%" size=1 color=black></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td ></td>
      <td  width=30%><div align=right><asp:checkbox runat=server id="chkShowNUM" text="显示内置页数" 
AutoPostBack="true"/>&nbsp&nbsp&nbsp&nbsp</div></td>
      <td  valign=bottom>第(<asp:label runat="server" id="lbPageMax"></asp:label>/

	  <asp:label runat="server" id="lbPageCount"></asp:label>)页</td>
      <td valign=bottom><asp:linkbutton ID="btnFirst" runat="server"
Text="最前一页"
CommandArgument="0"
ForeColor="navy"
Font-Name="verdana" 
OnClick="PagerButtonClick"
/></td>
      <td valign=bottom width=8%><asp:linkbutton ID="btnPrev" runat="server"
Text="上一页"
CommandArgument="prev"
ForeColor="navy"
Font-Name="verdana" 
OnClick="PagerButtonClick"
/></td>
      <td valign=bottom width=8%><asp:linkbutton ID="btnNext" runat="server"
Text="下一页"
CommandArgument="next"
ForeColor="navy"
Font-Name="verdana" F
OnClick="PagerButtonClick"
/></td>
      <td valign=bottom width=8%><asp:linkbutton ID="btnLast" runat="server"
Text="最后一页"
CommandArgument="last"
ForeColor="navy"
Font-Name="verdana"
OnClick="PagerButtonClick"
/></td>
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
<div id="Layer1" style="position:absolute; width:716px; height:152px; z-index:1; left: 16px; top: 22px;"> 
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="759" height="160">
    <param name=movie value="images/swf_move2.swf">
    <param name=quality value=high>
    <param name="wmode" value="transparent">
    <embed src="images/swf_move.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="759" height="160" wmode="transparent"> 
    </embed> </object>
</div>
</body>
</html>
