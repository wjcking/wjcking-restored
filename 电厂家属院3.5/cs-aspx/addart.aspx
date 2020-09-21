<%@ Page Inherits="AddArt" Src="code/addart.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>www.cs-aspx.net</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
</head>

<body background="images/watermrk.gif">
<form runat="server">
  <table width="100%" border="0">
    <tr class="9point"> 
      <td width="21%"> <p><img src="images/cs-aspx.gif" width="167" height="43"></p></td>
      <td width="51%">&nbsp;</td>
      <td width="28%" valign="bottom">INSERT <a href="#">DELETE</a></td>
    </tr>
    <tr class="9point"> 
      <td colspan="3"> <hr size=1></td>
    </tr>
    <tr class="9point"> 
      <td><div align="right">标题:</div></td>
      <td><asp:textbox ID=tbxaddname runat="server"
	   style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" size=30/></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td><div align="right">来源:</div></td>
      <td><asp:textbox runat=server ID="tbxaddfrom"  style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" /></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td><div align="right">作者:</div></td>
      <td><asp:textbox ID=tbxaddwriter runat="server"
	   style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" /></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td><div align="right">类型:</div></td>
      <td><asp:dropdownlist runat=server id="ddltypes"> 
          <asp:listitem>ASP.NET</asp:listitem>
          <asp:listitem>C sharp</asp:listitem>
          <asp:listitem>Java</asp:listitem>
          <asp:listitem>数据库</asp:listitem>
          <asp:listitem>其他</asp:listitem>
        </asp:dropdownlist></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td><div align="right"></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td valign="top"> <div align="right">内容:</div></td>
      <td><asp:textbox ID=tbxaddart TextMode="multiline" runat="server"
	   style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" rows=12 cols=50/></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td><div align="right"></div></td>
      <td><div align="center"><br>
          <asp:button ID=btnIns runat=server Text="Insert"  style="border-style: solid; border-width: 1" OnClick="Art_Insert"/>
          &nbsp&nbsp; 
          <asp:button id=btnRes runat=server text="Reset" OnClick="Add_Clear" style="border-style: solid; border-width: 1"/>
        </div></td>
      <td>&nbsp;</td>
    </tr>
    <tr class="9point"> 
      <td colspan="3"> <hr size=1></td>
    </tr>
  </table>
</form>
</body>
</html>
