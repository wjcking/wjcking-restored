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

public class CsApp:Page
{
public Label lbllogname;
public DataGrid dgSeInfor;
HttpCookie CkeLogin=new HttpCookie("LogName");
//*****************************************
public void Page_Load()
{

if((bool)Session["Fpage_pass"]==false)
Response.Redirect("friend.aspx");

SeInfor();
if(Request.Cookies["LogName"]!=null)
lbllogname.Text=Request.Cookies["LogName"].Value;
else
{
CkeLogin.Value=Request.QueryString["Name"];
Response.Cookies.Add(CkeLogin);
lbllogname.Text=Request.Cookies["LogName"].Value;
SeInfor();
}
}

public void SeInfor()
{
dgSeInfor.PagerStyle.Visible=false;
string strCon=Application["db_friend"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from db_art";
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
OleDbDataReader objDataReader=null;
objCon.Open();
dgSeInfor.DataSource=objCmd.ExecuteReader();
dgSeInfor.DataBind();
objCon.Close();
}
}

