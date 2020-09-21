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

public class Art:Page
{
public DataGrid dgArt;

public void UpCount()
{

long ID=Convert.ToInt64(Request.QueryString["id"]);
string strCon=Application["db_app"].ToString();

OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="Update db_art set Visit=Visit+1 where ID="+ID;
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();

}
public void Page_Load()
{
try
{
UpCount();
long ID=Convert.ToInt64(Request.QueryString["id"]);
string strCon="Provider=Microsoft.Jet.OleDb.4.0;";
strCon+="Data Source="+Server.MapPath("database\\db_app.mdb");
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from db_art where ID="+ID.ToString();

OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgArt.DataSource=objCmd.ExecuteReader();
dgArt.DataBind();
objCon.Close();
}
catch
{
Response.Write("<script>alert('тн')<");
Response.Write("/");
Response.Write("script>");
}

}

}
