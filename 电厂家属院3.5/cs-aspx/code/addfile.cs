using System;
using CSupload;
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

public class AddFile:Page
{

public TextBox tbxtypes;
public TextBox tbxaddtitle;
public Button btnup;
public TextBox tbxreadme;
public HtmlInputFile upFile;
public Label FileMsg;
public Button btnIns;
public Button btnRes;
public DropDownList ddlstep;
string strFileSize;
string strFileName;
string strFileTypes;


public void Upload(object sender,EventArgs e)
{
try
{

 if(tbxtypes.Text!=""&&tbxaddtitle.Text!="")
 {
 MyUpload myUpload=new MyUpload();
 myUpload.FileLength=5000;
 myUpload.PostedFile=upFile.PostedFile;
 myUpload.Extension=strFileTypes;
 
  
 strFileName = myUpload.PostedFile.FileName;
 int intP=strFileName.LastIndexOf("\\")+1;
 strFileTypes=strFileName.Substring(intP++);

 myUpload.SavePath=Server.MapPath("files/");
 if(strFileTypes.LastIndexOf("exe")!=-1)
 myUpload.Extension="exe";
 else if(strFileTypes.LastIndexOf("rar")!=-1)
 myUpload.Extension="rar";
 else if(strFileTypes.LastIndexOf("zip")!=-1)
 myUpload.Extension="zip";
 else
 {
 Response.Write("<script>alert('只能是exe,zip,rar三种格式 ')<");
 Response.Write("/");
 Response.Write("script>");
 }
 string strfile=myUpload.PostedFile.ContentLength.ToString();
 strFileSize=strfile.Substring(0,strfile.Length-3);
 FileMsg.Text=myUpload.Upload();
}
else
{
 Response.Write("<script>alert('请把各项填写好')<");
 Response.Write("/");
 Response.Write("script>");
}
if(FileMsg.Text.IndexOf("Successfully")!=-1)
{
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="INSERT INTO db_down(FileTitle,Types,FileUrl,FileSize,FileReadMe,Score) VALUES(?,?,?,?,?,?)";
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);

objCmd.Parameters.Add("FileTitle",OleDbType.VarChar,100,"FileTitle");
objCmd.Parameters.Add("FileSize",OleDbType.VarChar,50,"FileSize");
objCmd.Parameters.Add("Types",OleDbType.VarChar,220,"Types");
objCmd.Parameters.Add("FileUrl",OleDbType.VarChar,254,"FileUrl");
objCmd.Parameters.Add("FileReadMe",OleDbType.VarChar,224,"FileReadMe");
objCmd.Parameters.Add("Score",OleDbType.VarChar,30,"Score");
if(tbxreadme.Text=="")
tbxreadme.Text=tbxaddtitle.Text;
string strScore="";
if(ddlstep.Items[0].Selected)
strScore="★★★";
else if(ddlstep.Items[1].Selected)
strScore="★★★★";
else if(ddlstep.Items[2].Selected)
strScore="★★★★★";
objCmd.Parameters["FileTitle"].Value=tbxaddtitle.Text;
objCmd.Parameters["FileSize"].Value=tbxtypes.Text;
objCmd.Parameters["Types"].Value="files/"+strFileTypes;
objCmd.Parameters["FileUrl"].Value=strFileSize+"KB";
objCmd.Parameters["FileReadMe"].Value=tbxreadme.Text;
objCmd.Parameters["Score"].Value=strScore;

objCon.Open();
objCmd.ExecuteNonQuery();

Response.Write("<script>alert('Sussess')<");
Response.Write("/");
Response.Write("script>");

Sus_Clear();
}
}

catch(Exception ex)
{
FileMsg.Text=ex.Message;
}
}

public void Add_Clear(object sender,EventArgs e)
{
tbxaddtitle.Text="";
tbxtypes.Text="";
tbxreadme.Text="";

}
public void Sus_Clear()
{
tbxaddtitle.Text="";
tbxtypes.Text="";
tbxreadme.Text="";
}
public void Page_Load()
{
if((bool)Session["Fpage_pass"]==false)
Response.Redirect("friend.aspx");
btnIns.Attributes.Add("onclick","return confirm('确定吗?')");
}
}
