<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>www.cs-aspx.net</title>
<link href="images/9points.css" rel="stylesheet" type="text/css">
</head>

<body><form runat="server">
<asp:DataGrid id="dgArtShow1" forecolor="black" font-size=9pt font-name=宋体 runat="server" 
                     Border=0
					 AllowCustomPaging="true"
                cellSpacing=0 cellPadding=4 
                     AutoGenerateColumns="False" 
                     showheader="false"  
                     showfooter="false" 
                     GridLines="None"
		> 
                            <Columns>
                            <asp:TemplateColumn runat="server">
                              <ItemTemplate>
        <table width="100%" border="0">
          <tr class="9point"> 
            <td width="22%"><img src="images/cs-aspx.gif" width="167" height="43"></td>
            <td width="61%">&nbsp;</td>
            <td width="17%">&nbsp;</td>
          </tr>
          <tr class="9point"> 
            <td colspan="3"> <hr size=1></td>
          </tr>
          <tr class="9point"> 
            <td><div align="right">编号:</div></td>
            <td><asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ID") %>'/> 
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr class="9point"> 
            <td><div align="right">标题:</div></td>
            <td><asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ArtName") %>'/> 
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr class="9point"> 
            <td><div align="right">日期:</div></td>
            <td><asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Dtime") %>'/> 
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr class="9point"> 
            <td height="19"><div align="right">类型:</div></td>
            <td><asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Types") %>'/> 
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr class="9point">
            <td colspan="3"><div align="center">
                <asp:button ID=btndel runat=server Text="DELETE!"/>
              </div></td>
          </tr>
          <tr class="9point"> 
            <td colspan="3"> <hr size=1></td>
          </tr>
          <tr class="9point"> 
            <td>&nbsp;</td>
            <td><div align="right">下一页 上一页</div></td>
            <td>&nbsp;</td>
          </tr>
        </table>
      </ItemTemplate>
  </asp:TemplateColumn>
                              
							  </Columns>
							  </asp:datagrid>
</form>
</body>
</html>
