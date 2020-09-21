<%@ Page Inherits="AddFile" Src="code/addfile.cs"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>www.cs-aspx.net</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
</head>

<body background="images/watermrk.gif">
<form runat=server  enctype="multipart/form-data" >
  <table width="100%" border="0">
    <tr class="9point"> 
      <td width="23%"><img src="images/cs-aspx.gif" width="167" height="43"></td>
      <td width="58%">&nbsp;</td>
      <td width="19%" valign="bottom">INSERT<a href="delfile.aspx"> DELETE</a></td>
    </tr>
    <tr class="9point"> 
      <td colspan="3"> <hr size=1></td>
    </tr>
    <tr class="9point"> 
      <td><div align="right">标题:</div></td>
      <td><asp:textbox ID="tbxaddtitle" size=30 runat=server
	 style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"/>&nbsp;
	 例：ASP.NET源程序</td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td><div align="right">类型:</div></td>
      <td><asp:textbox ID="tbxtypes" size=30 runat=server
	 style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"/>
	 &nbsp;例：电子图书</td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td><div align="right">浏览:</div></td>
      <td>
	  <input type="file" ID="upFile" size=30 runat=server
	 style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"/>
        小于4MB,否则会溢出</td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point">
      <td height="14" valign="bottom"> 
        <div align="right">级别:</div></td>
      <td valign="top">
	  <asp:dropdownlist runat=server id="ddlstep" >
	  <asp:listitem>一般</asp:listitem>
	  <asp:listitem>很好</asp:listitem>
	  <asp:listitem>非常好</asp:listitem>
	  </asp:dropdownlist>
        &nbsp;
		<asp:label runat="server" id="FileMsg"/></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td height="15" valign="top"> <div align="right">简介:</div></td>
      <td><asp:textbox ID="tbxreadme" textmode="multiline" rows=10 cols=50 runat=server
	 style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"/> 
        <div align="center"><br>
          <br>
          <asp:button id="btnIns" runat=server text="INSERT and UPLOAD" style="border-style: solid; border-width: 1"
		  onclick="Upload"/>
          &nbsp 
          <asp:button id="btnRes" runat=server text="RESET" style="border-style: solid; border-width: 1" OnClick="Add_Clear"/>
        </div></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td colspan="3"> <hr size=1></td>
    </tr>
  </table></form>
</body>
</html>
