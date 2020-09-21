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

public class Down:Page
{
public DataGrid dgDown;
public LinkButton btnFileF;
public LinkButton btnFileN;
public LinkButton btnFileP;
public LinkButton btnFileL;
public Label lbPageCount;
public Label lbPageMax;
public CheckBox chkShowNUM;
public void Page_Load()
{
 if (chkShowNUM.Checked)
    {
      dgDown.PagerStyle.Visible=true;
    } 
    else
    {
      dgDown.PagerStyle.Visible=false;
    } 
 FileGrid();

}
public DataView ShowDown()
{
string strSQL="select * from db_down order by ID desc";
string strCon=Application["db_app"].ToString();
OleDbConnection objCon=new OleDbConnection(strCon);
DataSet objDataSet=new DataSet();
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strSQL,objCon);
objAdapter.Fill(objDataSet,"db_down");
//dgDown.DataSource=objDataSet.Tables["db_down"].DefaultView;
//dgDown.DataBind();
return objDataSet.Tables["db_down"].DefaultView;
}
public void FileBtn(Object sender, EventArgs e)
{
    String arg = ((LinkButton)sender).CommandArgument;

    switch(arg)
    {
        case ("next"):
            if (dgDown.CurrentPageIndex < (dgDown.PageCount - 1))
           dgDown.CurrentPageIndex ++;
            break;
        case ("prev"):
            if (dgDown.CurrentPageIndex > 0)
          dgDown.CurrentPageIndex --;
            break;
        case ("last"):
          dgDown.CurrentPageIndex = (dgDown.PageCount - 1);
            break;
        default:
            //±¾Ò³Öµ
          dgDown.CurrentPageIndex = Convert.ToInt32(arg);
            break;
    }
    FileGrid();
}
public void ShowStats()
{
lbPageCount.Text=(dgDown.CurrentPageIndex+1).ToString();
lbPageMax.Text=dgDown.PageCount.ToString();
}
public void MyDataGrid_Page(Object sender, DataGridPageChangedEventArgs e) {
        dgDown.CurrentPageIndex = e.NewPageIndex;

        FileGrid();
    }
public void FileGrid()
{
dgDown.DataSource=ShowDown();
dgDown.DataBind();
ShowStats();
}
}