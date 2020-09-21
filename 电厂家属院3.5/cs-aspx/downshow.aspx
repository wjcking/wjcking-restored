<%@ Page Inherits="DownShow" Src="code/downshow.cs" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="images/9points.css" rel="stylesheet" type="text/css">
</head>
<body  background="images/bg2.gif">
<table width="100%" border="0">
  <tr> 
    <td class="9point"><img src="images/cs-aspx.gif" width="167" height="43"></td>
  </tr>
  <tr> 
    <td class="9point"> <hr size=1></td>
  </tr>
  <tr> 
    <td class="9point"> <asp:datagrid ID="dgDownShow" ForeColor="black" Font-Size=9pt Font-Name=宋体 runat="server" 
                     border=0
		Width="100%"
                CellSpacing=0 CellPadding=4 
                     AutoGenerateColumns="False" 
                     ShowHeader="true"  
                     ShowFooter="true" 
                     GridLines="None"	> 
        <columns>
        <asp:templatecolumn runat="server">
          <itemtemplate> 
            <table width="100%" border="0" class="9point">
              <tr> 
                <td width="14%">软件名称：</td>
                <td width="86%"> <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"FileTitle")%>'></asp:label> 
                </td>
              </tr>
              <tr> 
                <td>推荐等级：</td>
                <td> <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"Score")%>'></asp:label></td>
              </tr>
              <tr>
                <td>软件类型：</td>
                <td>
				<asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"Types")%>'></asp:label></td>
              </tr>
              <tr> 
                <td>点击统计：</td>
                <td> <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"Visit")%>'></asp:label></td>
              </tr>
              <tr> 
                <td>软件大小：</td>
                <td> <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"FileSize")%>'></asp:label></td>
              </tr>
              <tr> 
                <td>更新日期：</td>
                <td> <asp:label 
runat=server text='<%# String.Format ("{0:yyyy-MM-dd}",DataBinder.Eval(Container.DataItem,"DTime"))%>'
/> </td>
              </tr>
              <tr> 
                <td>下载地址：</td>
                <td><a href='<%# DataBinder.Eval(Container.DataItem,"FileUrl")%>'>DOWNLOAD</a></td>
              </tr>
              <tr> 
                <td height="48" valign="top"> <div align="left">软件简介：</div></td>
                <td> <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"FileReadMe")%>'></asp:label></td>
              </tr>
            </table>
          </itemtemplate>
        </asp:templatecolumn>
        </columns>
      </asp:datagrid></td>
  </tr>
  <tr> 
    <td ></td>
  </tr>
  <tr> 
    <td height="54" class="9point"> <hr size=1>
      * 如果不能解压，请到此下载<a href="files/winrar.exe">WINRAR</a>安装即可<br>
      * 网络上来的资源,下载后第一时间查毒<br>
      * 如果电子图书不能阅览下载<a href="http://gz.onlinedown.net/down/AdbeRdr60_chs_full.exe">AcroReader</a></td>
  </tr>
  <tr> 
    <td class="9point"> <hr size=1></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
