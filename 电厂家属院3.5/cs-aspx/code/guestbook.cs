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



public class UMShow:Page
{
public DataGrid UserMsgShow;
public LinkButton btnMsgF;
public LinkButton btnMsgN;
public LinkButton btnMsgP;
public LinkButton btnMsgL;
public CheckBox chkShowNUM;


public void Page_Load()
{
 if (chkShowNUM.Checked)
    {
      UserMsgShow.PagerStyle.Visible=true;
    } 
    else
    {
     UserMsgShow.PagerStyle.Visible=false;
    } 

LiveBindGrid();


}


ICollection  LiveMsg_Show()
{

string strSQL="select * from db_gb order by ID desc";
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
DataSet objDataSet=new DataSet();
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strSQL,objCon);
objAdapter.Fill(objDataSet,"db_gb");
return objDataSet.Tables["db_gb"].DefaultView;
}

public void MsgPageBtn(Object sender, EventArgs e)
{
    String arg = ((LinkButton)sender).CommandArgument;

    switch(arg)
    {
        case ("next"):
            if (UserMsgShow.CurrentPageIndex < (UserMsgShow.PageCount - 1))
           UserMsgShow.CurrentPageIndex ++;
            break;
        case ("prev"):
            if (UserMsgShow.CurrentPageIndex > 0)
           UserMsgShow.CurrentPageIndex --;
            break;
        case ("last"):
          UserMsgShow.CurrentPageIndex = (UserMsgShow.PageCount - 1);
            break;
        default:
            //±¾Ò³Öµ
           UserMsgShow.CurrentPageIndex = Convert.ToInt32(arg);
            break;
    }
    LiveBindGrid();
}
public void MyDataGrid_Page(Object sender, DataGridPageChangedEventArgs e) {
        UserMsgShow.CurrentPageIndex = e.NewPageIndex;

        LiveBindGrid();
    }


public void Msg_NoPage(Object sender, DataGridPageChangedEventArgs e)
{
LiveBindGrid();
}

public void LiveBindGrid()
{
UserMsgShow.DataSource=LiveMsg_Show();

try
{  
  UserMsgShow.DataBind();    
}  
catch
{     
   int i=UserMsgShow.CurrentPageIndex;  
   while (i>=UserMsgShow.PageCount)  
   i--;  
   UserMsgShow.CurrentPageIndex=i;  
   UserMsgShow.DataBind();    
} 
}

}