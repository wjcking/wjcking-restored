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

public class ArtCount:Page
{
public Label TCount;
public Label ACount;
public Label CCount;
public Label JCount;
public Label OCount;
public DataGrid dgArtCount;
public void Page_Load()
{
int intCount;
string strCount="";
string[] strSQL=new string[5];

strSQL[0]="select count(ArtName) from db_art where Types='ASP.NET'";
strSQL[1]="select count(ArtName) from db_art where Types='C sharp'";
strSQL[2]="select count(ArtName) from db_art where Types='Java'";
strSQL[3]="select count(ArtName) from db_art where Types='数据库'";
strSQL[4]="select count(ArtName) from db_art where Types='其他'";

for(intCount=0;intCount<strSQL.Length;intCount++)
{

string strCon=Application["db_app"].ToString();

OleDbConnection objCon=new OleDbConnection(strCon);
DataSet objDS=new DataSet();
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strSQL[intCount],objCon);
objAdapter.Fill(objDS,"db_art");
strCount+=objDS.Tables[0].DefaultView.ToString()+"<br>";
TCount.Text=strCount;


}
}
}
