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

public class Vote:Page
{
public Label msgout;
public void Page_Load()
{
string strVote=Request.Form["rvote"];
string strSQL;
switch(strVote)
{
	case "ASP":
	strSQL="UPDATE db_vote SET 人气=人气+1 WHERE 百分比='ASP'";
	break;

	case "ASPX":
	strSQL="UPDATE db_vote SET 人气=人气+1 WHERE 百分比='ASPX'";
	break;

	case "PHP" :
	strSQL="UPDATE db_vote SET 人气=人气+1 WHERE 百分比='PHP'";
	break;

	case "JSP" :
	strSQL="UPDATE db_vote SET 人气=人气+1 WHERE 百分比='JSP'";
	break;
	
	default :
	strSQL="select * from db_vote";
	msgout.Text="您还没有投票呢,正在转向首页.....";
	
	break;
}
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();
}
}