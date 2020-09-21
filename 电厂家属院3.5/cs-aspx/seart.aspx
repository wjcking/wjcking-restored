<%@ Page Inherits="SeArt" Src="code/seart.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
<link href="images/9sec.css" rel="stylesheet" type="text/css">
<link href="images/9points.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" class="9point">
  <tr> 
    <td width="34%"><div align="right"> 
        <p>&nbsp;</p>
        <p><img src="images/cs-aspx.gif" width="167" height="43"></p>
      </div></td>
    <td width="4%">&nbsp;</td>
    <td width="13%">&nbsp;</td>
    <td width="21%">&nbsp;</td>
    <td colspan="2" valign="bottom">Powered By ASP.NET</td>
  </tr>
  <tr> 
    <td colspan="6"><hr size=1 width=90%></td>
  </tr>
  <tr> 
    <td colspan="6"><center>
        <table width="90%" border="0">
          <tr> 
            <td><asp:datagrid ID="dgSeArt" ForeColor="black" Font-Size=9pt Font-Name=宋体 runat="server" 
                     border=0
		Width="100%"
		
		
                CellSpacing=0 CellPadding=4 
                     AutoGenerateColumns="False" 
                     ShowHeader="false"  
                     ShowFooter="false" 
                     GridLines="None"	
> 
                <columns>
                <asp:templatecolumn runat="server">
                  <itemtemplate> 
				  <asp:label runat=server Text='<%# DataBinder.Eval(Container.DataItem,"ReadMe") %>'
font-size=9pt font-name="宋体"/>
				  </itemtemplate>
                </asp:templatecolumn>
                </columns>
              </asp:datagrid></td>
          </tr>
        </table>
      </center></td>
  </tr>
  <tr> 
    <td colspan="6"><hr size=1 width=90%></td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td width="22%"><a href="Javascript:window.close()"><img src="images/close.gif" alt="关闭" width="50" height="16" border="0"></a> 
      <a href="#"><img src="images/top.gif" alt="Top" width="50" height="16" border="0"></a></td>
    <td width="6%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
