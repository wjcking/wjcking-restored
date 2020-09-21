<%@ Page Inherits="Art" Src="code\art.cs" %>


<link href="images/9points.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
</html>
<asp:DataGrid id="dgArt" forecolor="black" font-size=9pt font-name=宋体 runat="server" 
                     Border=0
		width="100%"
		
		style="TABLE-LAYOUT: fixed; WORD-BREAK: break-all"
                cellSpacing=0 cellPadding=4 
                     AutoGenerateColumns="False" 
                     showheader="false"  
                     showfooter="false" 
                     GridLines="None"	
> 
 <Columns> 
<asp:TemplateColumn runat="server">          
<ItemTemplate> 
<center>
<br><br><br>
        <table border=0 width=90% font-size=9pt >
          <tr>
            <td align=center class="9point"> <b>
<asp:label runat=server Text='<%# DataBinder.Eval(Container.DataItem,"ArtName")%>'/></b>
</td>
</tr>
<tr>
            <td class="9point"><img src="images\cs-aspx.gif">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
             &nbsp&nbsp&nbsp来自:
<asp:label runat=server Text='<%# DataBinder.Eval(Container.DataItem,"ArtFrom") %>'/>
&nbsp&nbsp&nbsp作者:<asp:label runat=server Text='<%# DataBinder.Eval(Container.DataItem,"Writer") %>'/>
&nbsp&nbsp&nbsp人气:<asp:label runat=server Text='<%# DataBinder.Eval(Container.DataItem,"Visit") %>'/>

</td>
</tr>

<tr>


            <td class="9point">
<hr size=1 color=black></td>
</tr>

<tr>
            <td class="9point"> 
              <center>
                <table width=95%>
                  <tr>
                    <td class="9point"> 
                      <div runat=server>
<%# DataBinder.Eval(Container.DataItem,"ReadMe")%>
</div>
<asp:label runat=server id="sh" text=/> </td>
                  </tr></table></center>
</td>
</tr>
<tr>
<td>

</td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
</table>
</center>
</ItemTemplate> 
</asp:TemplateColumn>
 </Columns> 
 </asp:DataGrid> 

<center>
<table border=0 width=90%  class id=images\9point.css><tr><td>
<hr size=1 width=100% color=black></td></tr><td>

        <p align="right"><a href="#"><img src="images/top.gif" border="0" width="50" height="16"></a> 
        
        <a href="javascript:window.print()"><img src="images/print.gif" border="0" width="50" height="16"></a> 
     <a href="bbs/"><img src="images/gobbs.gif" border="0" width="50" height="16"></a> 
        <a href="javascript:self.close()"><img src="images/close.gif" border="0" width="50" height="16"></a>

      </p>
</td></tr>
</table>
</center>