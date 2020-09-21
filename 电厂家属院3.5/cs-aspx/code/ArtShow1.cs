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

public class ArtShow1:Page
{
public DataGrid dgArtShow1;
public DataGrid dgDownShow;
public string strDate=DateTime.Now.ToString("yyyy-M-d");
HttpCookie CkeCount=new HttpCookie("Count");
public void DownShow()
{
string strCon=Application["db_app"].ToString();

OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select  top 10 * from db_down order by Visit desc";

OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgDownShow.DataSource=objCmd.ExecuteReader();
dgDownShow.DataBind();
objCon.Close();
}

public void Page_Load()
{
dgDownShow.PagerStyle.Visible=false;
if(Request.Cookies["Count"]==null)
{
CkeCount.Value="true";
//DateTime dt=DateTime.Now;
//TimeSpan ts=new TimeSpan(30,0,0,0);
//CkeCount.Expires=dt+ts;
Response.Cookies.Add(CkeCount);
AllCount();
//DayCount();
}
DownShow();
dgArtShow1.PagerStyle.Visible=false;
int id=Convert.ToInt32(Request.QueryString["id"]);
string strCon=Application["db_app"].ToString();

OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select top 10 ID,ArtName,Visit,DTime from db_art order by Visit desc";

OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgArtShow1.DataSource=objCmd.ExecuteReader();
dgArtShow1.DataBind();
objCon.Close();
}
public void AllCount()
{

string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="update db_count set AllVisit=AllVisit+1";
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();

}
/*
public void DayUpdate()
{

string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="update db_DayCount set Visit=0 and VDate="+strDate;
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();
}
public void DayCount()
{
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="update db_DayCount set Visit=Visit+1 where VDate="+strDate;
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
OleDbDataReader objDataReader=null;

objDataReader=objCmd.ExecuteReader();

while(objDataReader.Read())
{
if(objDataReader["VDate"]==strDate)
{
objCmd.ExecuteNonQuery();
}
else
{
DayUpdate();
}
}
objDataReader.Close();
objCon.Close();
}
*/
}