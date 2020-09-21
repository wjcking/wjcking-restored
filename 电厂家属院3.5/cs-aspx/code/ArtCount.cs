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

public class ArtCount:Page
{
public DataGrid dgTCount;
public DataGrid dgACount;
public DataGrid dgCCount;
public DataGrid dgJCount;
public DataGrid dgDCount;
public 
public void Page_Load()
{
string strCon=Application["db_app"].ToString();
string strSQL="SELECT count(Name) FROM db_art where Types='ASP.NET'";
OleDbConnection objCon=new OleDbConnection()
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgACount.DataSource=objCmd.ExecuteReader(CommandBehavior.CloseConnection);
dgACount.DataBind();

}
}
