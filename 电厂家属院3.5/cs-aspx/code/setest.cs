using System;
using csrand;
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
using System.Web.Security;

public class SeTest:Page
{
public TextBox Fri_id;
public TextBox Fri_pwd;
public TextBox Fri_Rand;
public Label Fri_lblRand;
public Label lblSeMsg;
public void Page_Load()
{
if((bool)Session["Fpage_pass"]==true)
Response.Redirect("seapp.aspx");


Rand objRand=new Rand();

if(!Page.IsPostBack)
Fri_lblRand.Text=objRand.SeRand();
}
public void Test(object sender,EventArgs e)
{
string strMD5=FormsAuthentication.HashPasswordForStoringInConfigFile(Fri_pwd.Text, "MD5");
string strCon=Application["db_friend"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from db_pwd where Uid='"+Fri_id.Text+"' and Pwd='"+strMD5+"'";
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
OleDbDataReader objDataReader=objCmd.ExecuteReader();
if(objDataReader.Read())
{
if(Fri_Rand.Text==Fri_lblRand.Text)
{
Session["Fpage_pass"]=true;
Response.Redirect("seapp.aspx?Name="+objDataReader["Name"]);
}
else
lblSeMsg.Text="ÑéÖ¤Âë´íÎó!";
}
else
{
lblSeMsg.Text="ID»òÃÜÂë´íÎó£¡ÇëÖØÐÂµÇÂ½";
Fri_id.Text="";
Fri_pwd.Text="";
}
objCon.Close();
}
public void Msg_Reset(object sender,EventArgs e)
{
Fri_id.Text="";
Fri_pwd.Text="";
}
}