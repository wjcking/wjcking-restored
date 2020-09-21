using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public class SeArt:Page
{
public DataGrid dgSeArt;

public void Page_Load()
{

if((bool)Session["Fpage_pass"]==false)
Response.Redirect("friend.aspx");

else
{
long ID=Convert.ToInt64(Request.QueryString["ID"]);
string strCon="Provider=Microsoft.Jet.OleDb.4.0;";
strCon+="Data Source="+Server.MapPath("database\\db_friend.mdb");
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from db_art where ID="+ID.ToString();
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgSeArt.DataSource=objCmd.ExecuteReader();
dgSeArt.DataBind();
objCon.Close();
}
}

}