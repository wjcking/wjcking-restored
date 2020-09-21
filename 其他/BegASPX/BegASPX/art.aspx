<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.OleDb" %>

<script language=cs runat=server>

private void Page_load()
{
long ID=Convert.ToInt64(Request.QueryString["id"]);
string strCon="Provider=Microsoft.Jet.OleDb.4.0;";
strCon+="Data Source="+Server.MapPath("database\\db_app.mdb");
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select ReadMe from db_art where ID="+ID.ToString();

DataSet objDS=new DataSet();
OleDbDataAdapter objDA=new OleDbDataAdapter(strSQL,objCon);
objDA.Fill(objDS,"myurl");
mydata.DataSource=objDS.Tables[0].DefaultView;
mydata.DataBind();
}
</script>
<ASP:DataGrid id="mydata" runat="server" font-size=9pt font-name=ËÎÌו/>
