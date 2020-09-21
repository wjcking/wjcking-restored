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

public class Links:Page
{
public DataGrid LinkShow;
public TextBox tbxSeaLink;
public Button btnSeaLink;
public DropDownList ddlTypesLink;
public Label lblMsgOut;
public LinkButton btnLinkFirst;
public LinkButton btnLinkNext;
public LinkButton btnLinkPrev;
public LinkButton btnLinkLast;
public Label lbPageMax;
public Label lbPageCount;
public CheckBox chkShowNUM;
string strSQL="select * from db_url order by ID desc";
DataSet objDataSet=null;
//****************************************************************
public string Link_SeaSQL()
{
if(tbxSeaLink.Text=="")
{
if(ddlTypesLink.Items[0].Selected)
strSQL="select * from db_url order by ID desc";
if(ddlTypesLink.Items[1].Selected)
strSQL="select * from db_url where Types='.NET' order by ID desc";
if(ddlTypesLink.Items[2].Selected)
strSQL="select * from db_url where Types='学习' order by ID desc";
if(ddlTypesLink.Items[3].Selected)
strSQL="select * from db_url where Types='娱乐' order by ID desc";
if(ddlTypesLink.Items[4].Selected)
strSQL="select * from db_url where Types='游戏' order by ID desc";
if(ddlTypesLink.Items[5].Selected)
strSQL="select * from db_url where Types='其他' order by ID desc";
}
else
{
if(ddlTypesLink.Items[0].Selected)
strSQL="select * from db_url where Name like '%"+tbxSeaLink.Text+"%' order by ID";
if(ddlTypesLink.Items[1].Selected)
strSQL="select * from db_url where Name like '%"+tbxSeaLink.Text+"%' and Types='.NET' order by ID";
if(ddlTypesLink.Items[2].Selected)
strSQL="select * from db_url where Name like '%"+tbxSeaLink.Text+"%' and Types='学习' order by ID";
if(ddlTypesLink.Items[3].Selected)
strSQL="select * from db_url where Name like '%"+tbxSeaLink.Text+"%' and Types='娱乐' order by ID";
if(ddlTypesLink.Items[4].Selected)
strSQL="select * from db_url where Name like '%"+tbxSeaLink.Text+"%' and Types='游戏' order by ID";;
if(ddlTypesLink.Items[5].Selected)
strSQL="select * from db_url where Name like '%"+tbxSeaLink.Text+"%' and Types='其他' order by ID";
}
return strSQL;
}
//****************************************************************
public void Page_Load()
{
 if (chkShowNUM.Checked)
    {
       LinkShow.PagerStyle.Visible=true;
    } 
    else
    {
       LinkShow.PagerStyle.Visible=false;
    } 

LinkGridBind();

}
//****************************************************************
public DataView Con_link()
{

string strLSQL=Link_SeaSQL();
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
objDataSet=new DataSet();
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strLSQL,objCon);
objAdapter.Fill(objDataSet,"db_url");

return objDataSet.Tables["db_url"].DefaultView;

}
//****************************************************************
public void Btn_SeaLink(object sender,EventArgs e)
{
string strLSQL=Link_SeaSQL();

string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
objDataSet=new DataSet();
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strLSQL,objCon);
objAdapter.Fill(objDataSet,"db_url");

LinkShow.DataSource=objDataSet.Tables["db_url"].DefaultView;
LinkShow.DataBind();
if(objDataSet.Tables["db_url"].Rows.Count==0)
lblMsgOut.Text="抱歉,数据库里没有您想要的链接";
else
lblMsgOut.Text="";
}
//****************************************************************
public void LinkPagerButtonClick(Object sender, EventArgs e)
{
    //获得LinkButton的参数值
    String arg = ((LinkButton)sender).CommandArgument;

    switch(arg)
    {
        case ("next"):
            if (LinkShow.CurrentPageIndex < (LinkShow.PageCount - 1))
            LinkShow.CurrentPageIndex ++;
            break;
        case ("prev"):
            if (LinkShow.CurrentPageIndex > 0)
            LinkShow.CurrentPageIndex --;
            break;
        case ("last"):
            LinkShow.CurrentPageIndex = (LinkShow.PageCount - 1);
            break;
        default:
            //本页值
            LinkShow.CurrentPageIndex = Convert.ToInt32(arg);
            break;
    }
   LinkGridBind();
}

//****************************************************************
public void ShowStats()
{

lbPageCount.Text=(LinkShow.CurrentPageIndex+1).ToString();
lbPageMax.Text=LinkShow.PageCount.ToString();
}

public void MyDataGrid_Page(Object sender, DataGridPageChangedEventArgs e) {
        LinkShow.CurrentPageIndex = e.NewPageIndex;

        LinkGridBind();
    }


public void LinkGridBind()  
{  
LinkShow.DataSource=Con_link();  

try
{  
  LinkShow.DataBind();  
  ShowStats();  
}  
catch
{     
   int i=LinkShow.CurrentPageIndex;  
   while (i>=LinkShow.PageCount)  
   i--;  
   LinkShow.CurrentPageIndex=i;  
   LinkShow.DataBind();    
   ShowStats();  
}  
}
}