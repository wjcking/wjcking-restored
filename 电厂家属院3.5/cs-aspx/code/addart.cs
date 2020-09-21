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

public class AddArt:Page
{

public DropDownList ddltypes;
public TextBox tbxaddname;
public TextBox tbxaddfrom;
public TextBox tbxaddwriter;
//public TextBox tbxdtime;
public TextBox tbxaddart;
public Button btnIns;
public Button btnRes;
public void Add_Clear(object sender,EventArgs e)
{
tbxaddname.Text="";
tbxaddfrom.Text="";
tbxaddwriter.Text="";

tbxaddart.Text="";
}
public void Sus_Clear()
{
tbxaddname.Text="";
tbxaddfrom.Text="";
tbxaddwriter.Text="";

tbxaddart.Text="";
}

public void Page_Load()
{
if((bool)Session["Fpage_pass"]==false)
Response.Redirect("friend.aspx");

btnIns.Attributes.Add("onclick","return confirm('确定吗?')");
}

string strSQL="INSERT INTO db_art(ArtName,ArtFrom,Writer,Types,ReadMe) VALUES(?,?,?,?,?)";

public void Art_Insert(object sender,EventArgs e)
{
try
{
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);


OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCmd.Parameters.Add("ArtName",OleDbType.VarChar,50,"ArtName");
objCmd.Parameters.Add("ArtFrom",OleDbType.VarChar,20,"ArtFrom");
objCmd.Parameters.Add("Writer",OleDbType.VarChar,20,"Writer");
objCmd.Parameters.Add("Types",OleDbType.VarChar,10,"Types");
objCmd.Parameters.Add("ReadMe",OleDbType.VarChar,65534,"ReadMe");

string selValue="ASP.NET";
if(ddltypes.Items[0].Selected)
selValue="ASP.NET";
else if(ddltypes.Items[1].Selected)
selValue="C sharp";
else if(ddltypes.Items[2].Selected)
selValue="Java";
else if(ddltypes.Items[3].Selected)
selValue="数据库";
else if(ddltypes.Items[4].Selected)
selValue="其他";




objCmd.Parameters["ArtName"].Value=tbxaddname.Text;
objCmd.Parameters["ArtFrom"].Value=tbxaddfrom.Text;
objCmd.Parameters["Writer"].Value=tbxaddwriter.Text;
objCmd.Parameters["Types"].Value=selValue;
objCmd.Parameters["ReadMe"].Value=tbxaddart.Text;
objCon.Open();
objCmd.ExecuteNonQuery();

Response.Write("<script>alert('Sussess')<");
Response.Write("/");
Response.Write("script>");

Sus_Clear();
}
catch(Exception ex)
{
Response.Write("<script>alert('Add Flied')<");
Response.Write("/");
Response.Write("script>");

}

}

}

