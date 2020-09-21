<script language="C#" runat=server>
void Application_OnStart()
{
Application["db_app"]="Provider=Microsoft.Jet.OleDb.4.0;Data Source="+Server.MapPath("database\\db_app.mdb");
Application["db_friend"]="Provider=Microsoft.Jet.OleDb.4.0;Data Source="+Server.MapPath("database\\db_friend.mdb");
}

void Session_OnStart()
{

}
</script>