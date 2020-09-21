<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.OleDb" %>

<script language=cs runat=server>

private void Page_Load()
{
int id=Convert.ToInt32(Request.QueryString["id"]);
string strCon=Application["db_app"].ToString();

OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from db_art";

DataSet objDS=new DataSet();
OleDbDataAdapter objDA=new OleDbDataAdapter(strSQL,objCon);
objDA.Fill(objDS,"db_art");
mydata.DataSource=objDS.Tables[0].DefaultView;
mydata.DataBind();
}

</script>
<form runat=server>
<asp:DataGrid id="mydata" forecolor="black" font-size=9pt font-name=ËÎÌו runat="server" 
                     Border=0
		
                cellSpacing=0 cellPadding=4 
                     AutoGenerateColumns="False" 
                     showheader="true"  
                     showfooter="true" 
                     GridLines="None"
		> 
 <Columns> 
<asp:TemplateColumn runat="server">          
<ItemTemplate> 
<img src="f:\cs-aspx\images\mood.gif">
<a href='art.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID") %>' target='_blank'> 
<asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ArtName") %>'/> </a> 
<asp:label runat=server text="[" forecolor=black/>
		<asp:label runat=server text='<%# DataBinder.Eval(Container.DataItem,"Dtime") %>'
/>
<asp:label runat=server text="]" forecolor=black/>
</ItemTemplate> 
</asp:TemplateColumn>


<asp:TemplateColumn runat="server">
	<ItemTemplate>
		
		</ItemTemplate>

</asp:templatecolumn>

                   </Columns> 
                    </asp:DataGrid> 
</form>
