<%@ Page Inherits="ReSeMsg" Src="code/resemsg.cs" %>

<html>
<head>
<script language="JavaScript">
function Re()
{
window.status="欢迎进入留言管理"
timer=setTimeout("Re()",1);
}
Re();
</script>
<title>cs-aspx</title>
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


<table width="778" height="465" align="center" cellpadding="0" cellspacing="0">
  <tr > 
    <td height="463"  background="images/watermrk.gif">
      <table width="100%" border="0">
      <tr class="9point"> 
        <td width="30%"> <div align="right"> 
            <p>&nbsp;</p>
            <p><img src="images/cs-aspx.gif" width="167" height="43"></p>
          </div></td>
        <td width="44%" valign="bottom"> <div align="center"></div></td>
        <td width="17%" valign="bottom"><a href="guestbook.aspx">返回留言板 </a>
		</td>
        <td width="9%">&nbsp;</td>
      </tr>
    </table>
    <hr size=1 width="90%">
    <form runat=server>
      <table>
        <tr> 
          <td width="779" colspan="5"> 
            <table width="100%" height="204" border="0">
              <tr class="9point"> 
                <td width="6%" height="200">&nbsp;</td>
                <td colspan="4" valign="top"> <asp:datagrid ID="MyDataGrid2" ForeColor="black" Font-Size=9pt Font-Name=宋体 runat="server" 
                     border=0
					 width=100%
 AllowCustomPaging="false"
	PageSize=1
	AllowPaging="true"
	style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"
	PagerStyle-Mode="NumericPages"
PagerStyle-HorizontalAlign="Right"

                CellSpacing=0 CellPadding=4 
                     AutoGenerateColumns="False" 
                     ShowHeader="false"  
                     ShowFooter="false" 
                     GridLines="None"
> 
                    <columns>
                    <asp:templatecolumn runat="server">
                      <itemtemplate> 
                        <table>
                          <tr> 
                            <td width="591" class="9point"> 编号: 
                              <asp:label runat="server" text='<%# DataBinder.Eval(Container.DataItem,"ID") %>'/> 
                            </td>
                          </tr>
                          <tr> 
                            <td class="9point"> 署名: 
                              <asp:label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Username") %>'/> 
                            </td>
                          </tr>
                          <tr> 
                            <td class="9point"> 性别: 
                              <asp:label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Sex") %>'/> 
                            </td>
                          </tr>
                          <tr> 
                            <td class="9point"> 内容: 
                              <asp:label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Message") %>'/> 
                            </td>
                          </tr>
                          <tr> 
                            <td class="9point"> <br> <br> <br>
                              -------------------------- 回复内容:--------------------------<br> 
		<asp:label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Remsg") %>'/> <br>
                              ---------------------------------------------------------------
                            </td>
                          </tr>
                          <tr> 
                            <td class="9point"> </td>
                          </tr>
                        </table>
                      </itemtemplate>
                    </asp:templatecolumn>
                    </columns>
                  </asp:datagrid> <br>  
                  <table>
                    <tr> 
                      <td> <asp:textbox TextMode="MultiLine" ID="areaup" Rows="7" cols=52
				  runat="server" style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid"/> 
                        <br> <asp:button id="Sub" text="Update"
				  runat="server" 	style="border-style: solid; border-width: 1" onclick="ReMsgUpdate"/> 
                        <asp:button   id="rest" text="Reset"
  runat="server"  onclick="AreaClear"
  style="border-style: solid; border-width: 1"/> 
  <asp:button runat=server id="btnDel" text="DELETE" onclick="MsgDel_Click"
  style="border-style: solid; border-width: 1"/></p> 
                      </td>
                      <td></td>
                    </tr>
                  </table>
                  
                  <p>&nbsp;</p></td>
                <td width="13%"></td>
              </tr>
            </table>
            <table width="99%" border="0">
              <tr class="9point"> 
                <td width="6%">&nbsp;</td>
                <td width="8%"> 
<asp:linkbutton ID="lbnN" runat="server" Text="上一页" OnClick="LbnNext"/> 
<asp:linkbutton ID="lbnP" runat="server" Text="下一页" OnClick="LbnPrev"/> 
</td>
              </tr>
            </table>
          
    
        <tr> 
          <td colspan="5"><hr size=1 width="90%"></td>
        </tr>
      </table>
    </form></td>
</tr> 

</body>
</html>