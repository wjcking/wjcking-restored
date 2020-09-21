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

public class AddMsg:Page
{
public Label lblMsgOut;
public TextBox username;
public DropDownList sex;
public TextBox email;
public TextBox oicq;
public TextBox homepage;
public TextBox artname;
public TextBox art;
public Button msgsub;
public Button reset;
public RequiredFieldValidator Rusername;
public RequiredFieldValidator Rart;
public RequiredFieldValidator Rartname;
public RegularExpressionValidator Rarthtml;
public RegularExpressionValidator emailRegexVal;

public void Sub_Msg(object sender,EventArgs e)
{
try
{
if(Page.IsValid)
{
string strSex="";
if(sex.Items[0].Selected)
strSex="ÄÐ";
else
strSex="Å®";
username.Text=username.Text.Replace("<","&lt;");
username.Text=username.Text.Replace(">","&gt;");
username.Text=username.Text.Replace(" ","&nbsp;");

artname.Text=artname.Text.Replace("<","&lt;");
artname.Text=artname.Text.Replace(">","&gt;");
artname.Text=artname.Text.Replace(" ","&nbsp;");
art.Text=art.Text.Replace("\r\n","<br>");
art.Text=art.Text.Replace(" ","&nbsp;");

string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="Insert Into db_gb(Username,Sex,Email,OpenICQ,Homepage,Title,Dtime,Message) values(?,?,?,?,?,?,?,?)";

OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);

objCmd.Parameters.Add("Username",OleDbType.VarChar,20,"Username");
objCmd.Parameters.Add("Sex",OleDbType.VarChar,4,"Sex");
objCmd.Parameters.Add("Email",OleDbType.VarChar,50,"Email");
objCmd.Parameters.Add("OpenICQ",OleDbType.VarChar,50,"OpenICQ");
objCmd.Parameters.Add("Homepage",OleDbType.VarChar,50,"Homepage");
objCmd.Parameters.Add("Title",OleDbType.VarChar,40,"Title");
objCmd.Parameters.Add("Dtime",OleDbType.VarChar,40,"Dtime");
objCmd.Parameters.Add("Message",OleDbType.VarChar,500,"Message");

objCmd.Parameters["Username"].Value=username.Text;
objCmd.Parameters["Sex"].Value=strSex;
objCmd.Parameters["Email"].Value=email.Text;
objCmd.Parameters["OpenICQ"].Value=oicq.Text;
objCmd.Parameters["Homepage"].Value=homepage.Text;
objCmd.Parameters["Title"].Value=artname.Text;
objCmd.Parameters["Dtime"].Value=DateTime.Now;
objCmd.Parameters["Message"].Value=art.Text;

objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();

Response.Redirect("addmsgout.htm");
}
}
catch
{
}



}
}
