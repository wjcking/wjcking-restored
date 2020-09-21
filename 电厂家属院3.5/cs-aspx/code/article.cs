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

public class Article:Page
{

public DataGrid dgArt;
public DropDownList ddlTypes;
public TextBox tbxSearch;
public Button btnSearch;
public LinkButton btnFirst;
public LinkButton btnNext;
public LinkButton btnPrev;
public LinkButton btnLast;
public Label lblErrorOut;
public Label lbPageMax;
public Label lbPageCount;
public string strSQL="select * from db_art order by ID desc";
public DataSet objDS=null;
public CheckBox chkShowNUM;
public string Sea_Sql()
{
if(tbxSearch.Text=="")
{
if(ddlTypes.Items[0].Selected)
strSQL="select * from db_art order by ID desc";
if(ddlTypes.Items[1].Selected)
strSQL="select * from db_art where Types='ASP.NET' order by ID desc";
if(ddlTypes.Items[2].Selected)
strSQL="select * from db_art where Types='C sharp' order by ID desc";
if(ddlTypes.Items[3].Selected)
strSQL="select * from db_art where Types='Java' order by ID desc";
if(ddlTypes.Items[4].Selected)
strSQL="select * from db_art where Types='数据库' order by ID desc";
if(ddlTypes.Items[5].Selected)
strSQL="select * from db_art where Types='其他' order by ID desc";
}
else
{
if(ddlTypes.Items[0].Selected)
strSQL="select * from db_art where ArtName like '%"+tbxSearch.Text+"%' order by ID desc";
if(ddlTypes.Items[1].Selected)
strSQL="select * from db_art where ArtName like '%"+tbxSearch.Text+"%' and Types='ASP.NET' order by ID desc";
if(ddlTypes.Items[2].Selected)
strSQL="select * from db_art where ArtName like '%"+tbxSearch.Text+"%' and Types='C sharp' order by ID desc";
if(ddlTypes.Items[3].Selected)
strSQL="select * from db_art where ArtName like '%"+tbxSearch.Text+"%' and Types='Java' order by ID desc";
if(ddlTypes.Items[4].Selected)
strSQL="select * from db_art where ArtName like '%"+tbxSearch.Text+"%' and Types='数据库' order by ID desc";
if(ddlTypes.Items[5].Selected)
strSQL="select * from db_art where ArtName like '%"+tbxSearch.Text+"%' and Types='其他' order by ID desc";
}
return strSQL;
}



public void Page_Load()
{
    if (chkShowNUM.Checked)
    {
       dgArt.PagerStyle.Visible=true;
    } 
    else
    {
       dgArt.PagerStyle.Visible=false;
    } 

if(!Page.IsPostBack)
{
dgArt.CurrentPageIndex = 0;
BindGrid();
}
}

public DataView DataFiller()
{
 
string strLSQL=Sea_Sql();
string strCon=Application["db_app"].ToString();

OleDbConnection objCon=new OleDbConnection(strCon);
objDS=new DataSet();
OleDbDataAdapter objDA=new OleDbDataAdapter(strLSQL,objCon);
objDA.Fill(objDS,"db_art");

if(objDS.Tables["db_art"].Rows.Count==0)
lblErrorOut.Text="抱歉,数据库里没有您想要的文章";
else
lblErrorOut.Text="";
return objDS.Tables["db_art"].DefaultView;

}
//*************************************************
public void ArtSearch(object sender,EventArgs e)
{

string strLSQL=Sea_Sql();
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
objDS=new DataSet();
OleDbDataAdapter objDA=new OleDbDataAdapter(strLSQL,objCon);
objDA.Fill(objDS,"db_art");
BindGrid();

if(objDS.Tables["db_art"].Rows.Count==0)
lblErrorOut.Text="抱歉,数据库里没有您想要的文章";
else
lblErrorOut.Text="";

}

//*************************************************
public void PagerButtonClick(Object sender, EventArgs e)
{
 
    String arg = ((LinkButton)sender).CommandArgument;

    switch(arg)
    {
        case ("next"):
            if (dgArt.CurrentPageIndex < (dgArt.PageCount - 1))
            dgArt.CurrentPageIndex ++;
            break;
        case ("prev"):
            if (dgArt.CurrentPageIndex > 0)
            dgArt.CurrentPageIndex --;
            break;
        case ("last"):
            dgArt.CurrentPageIndex = (dgArt.PageCount - 1);
            break;
        default:
            dgArt.CurrentPageIndex = Convert.ToInt32(arg);
            break;
    }
BindGrid();
}

public void ShowStats()
{

    lbPageMax.Text=(dgArt.CurrentPageIndex+1).ToString();
    lbPageCount.Text=dgArt.PageCount.ToString();
}

public void MyDataGrid_Page(Object sender, DataGridPageChangedEventArgs e) {
        dgArt.CurrentPageIndex = e.NewPageIndex;

        BindGrid();
    }

public void BindGrid()  
{  
dgArt.DataSource=DataFiller();

try
{  
  dgArt.DataBind();  
  ShowStats();  
}  
catch
{     
   int i=dgArt.CurrentPageIndex;  
   while (i>=dgArt.PageCount)  
   i--;  
   dgArt.CurrentPageIndex=i;  
   dgArt.DataBind();    
   ShowStats();  
}  
}
//*************************************************
}