<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script language="C#" runat=server>

public void Page_Load()
{
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="update db_count set MaxOnline="+32;
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();

}

void Application_OnStart(Object sender, EventArgs e)
{
//******************************************************************
Application["db_app"]="Provider=Microsoft.Jet.OleDb.4.0;Data Source="+Server.MapPath("database\\db_app.mdb");	 	

Application["db_friend"]="Provider=Microsoft.Jet.OleDb.4.0;Data Source="+Server.MapPath("database\\db_friend.mdb");		
//********************Connect database**************************

Application["user_sessions"]=0;
Application["all_count"]=0;

}




public void Session_OnStart(Object sender, EventArgs e)
{

Application.Lock();
Application["user_sessions"] = (int)Application["user_sessions"]+1;
Application.UnLock();


Application.Lock();
if((int)Application["all_count"]<(int)Application["user_sessions"])
Application["all_count"]=(int)Application["user_sessions"];



Application.UnLock();


Session["Fpage_pass"]=false;

}
public void Application_OnEnd(Object sender, EventArgs e)
{



}
void Session_OnEnd(Object sender, EventArgs e)
{
  Application.Lock();
  Application["user_sessions"]=(int)Application["user_sessions"]-1;
  Application.UnLock();
}
</script>