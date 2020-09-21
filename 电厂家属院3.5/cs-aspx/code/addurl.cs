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

public class AddUrl:Page
{
public Label InsertMsg;
public void Page_Load()
{
string ResName;
if(Request.Form["TempName"]=="")
ResName="CS-ASPX Guest";
else
ResName=Request.Form["TempName"];

string ResMail=Request.Form["mail"];
string ResUrl=Request.Form["Url"];
string ResUrlName=Request.Form["UrlName"];
string ResUrlTypes=Request.Form["ddllinktypes"];
string ResUrlReadMe=Request.Form["UrlReadMe"];

try
{
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);

string strSQL="Insert into db_url (UserName,UserMail,Url,Name,ReadMe,Types) values('"+ResName+"','"+ResMail+"','"+ResUrl+"','"+ResUrlName+"','"+ResUrlReadMe+"','"+ResUrlTypes+"')";

OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();
InsertMsg.Text="记录添加成功! 2秒钟后退出";
}
catch
{
InsertMsg.Text="记录添加失败! 可能有的项目没填好, 2秒钟后退出";
}

}

}