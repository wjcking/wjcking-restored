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

public class DownShow:Page
{
public DataGrid dgDownShow;

public void Page_Load()
{
ShowDown();
}
public void ShowDown()
{
DownUpdate();
string strSQL="select * from db_down where ID="+Request.QueryString["id"];
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgDownShow.DataSource=objCmd.ExecuteReader();
dgDownShow.DataBind();
objCon.Close();
}
public void DownUpdate()
{
string strSQL="update db_down set Visit=Visit+1 where ID="+Request.QueryString["id"];
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();
}

}