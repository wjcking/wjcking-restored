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


public class ReSeMsg:Page
{
public DataGrid MyDataGrid2;
public LinkButton lbnP;
public LinkButton lbnN;
public TextBox areaup;
public Button sub;
public Button rest;
public Button btnDel;

public void MsgDel_Click(object sender,EventArgs e)
{

string strCon=Application["db_app"].ToString();
string strSQL="Delete from db_gb where ID="+Request.QueryString["id"];
OleDbConnection objCon=new OleDbConnection(strCon);
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();
//Response.Write("<script>alert('delete success')<");
//Response.Write("/");
//Response.Write("script>");
}
public void AreaClear(object sender,EventArgs e)
{
areaup.Text="";
}

public void ReMsgUpdate(object sender,EventArgs e)
{
if(areaup.Text!="")
{
if(areaup.Text.IndexOf("<")==-1||areaup.Text.IndexOf(">")==-1)
{
areaup.Text=areaup.Text.Replace("\r\n","<br>");
areaup.Text=areaup.Text.Replace(" ","&nbsp;");
//areaup.Text=areaup.Text.Replace("<","&lt;");
//areaup.Text=areaup.Text.Replace(">","&gt;");

string strCon=Application["db_app"].ToString();
string strSQL="Update db_gb set Remsg='"+"<font color=#0033CC>"+areaup.Text+
"</font>"+"'where ID="+Request.QueryString["id"];
OleDbConnection objCon=new OleDbConnection(strCon);
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
objCmd.ExecuteNonQuery();
objCon.Close();
Response.Redirect("seremsg.aspx?id="+Request.QueryString["id"]);
}
else
{
Response.Write("<script>alert('这里不能输入html标签')<");
Response.Write("/");
Response.Write("script>");
}
}
}
public void Page_Load(object sender,EventArgs e)
{
   if((bool)Session["Fpage_pass"]==false)
   Response.Redirect("friend.aspx");
   MyDataGrid2.PagerStyle.Visible=false;
   BindGrid(); 
 btnDel.Attributes.Add("onclick","return confirm('确定吗?')");

}

public DataView ReSedata()
{
DataSet objDataSet=null;

string strSQL="select * from db_gb where ID="+Request.QueryString["id"];
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
objDataSet=new DataSet();
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strSQL,objCon);
objAdapter.Fill(objDataSet,"db_gb");
return objDataSet.Tables["db_gb"].DefaultView;


}

public void LbnPrev(object sender,EventArgs e)
{
int P=Convert.ToInt32(Request.QueryString["id"])-1;
Response.Redirect("seremsg.aspx?id="+P);

}
public void LbnNext(object sender,EventArgs e)
{
int N=Convert.ToInt32(Request.QueryString["id"])+1;
Response.Redirect("seremsg.aspx?id="+N);
}
public void BindGrid()
{
    MyDataGrid2.DataSource = ReSedata();
    MyDataGrid2.DataBind();

}

}