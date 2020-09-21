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

public class Sepass:Page
{

public void Page_Load()
{
if((bool)Session["Fpage_pass"]==false)
Response.Redirect("default.aspx");
}


}