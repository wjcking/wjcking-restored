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

public class MyCodeBehind : Page
{
  public TextBox name;
  public Label message;
  public void Page_load()
  {
    string User = name.Text;
    message.Text = "Hello " + name.Text;
  }
}
