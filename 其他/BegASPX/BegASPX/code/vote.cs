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
public void Page_Load()
{
string strVote=Request.Form["rvote"];
string strSQL;
switch(strVote)
{
	case "ASP":
	strSQL="UPDATE db_vote SET Vote=Vote+1 WHERE Name='ASP'";
	break;

	case "ASPX":
	strSQL="UPDATE db_vote SET Vote=Vote+1 WHERE Name='ASPX'";
	break;

	case "PHP" :
	strSQL="UPDATE db_vote SET Vote=Vote+1 WHERE Name='PHP'";
	break;

	case "JSP" :
	strSQL="UPDATE db_vote SET Vote=Vote+1 WHERE Name='JSP'";
	break;

	default :
	strSQL="select * from db_vote";
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