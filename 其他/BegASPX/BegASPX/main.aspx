<%@ Register TagPrefix="UserControl" TagName="Header" Src="header.ascx" %>
<html>
<body>
<form runat="server" method="post">
  <UserControl:Header id="MyHeader" runat="Server" />
  <h3>A simple control for playing with header color</h3>
  <asp:DropDownList id="ColorList" runat="Server" />
  <asp:button text="Apply Color" OnClick="SubmitBtn_Click" runat="server" />
  <br /><br />
  <asp:label id="SelectedColor" runat="Server" />
</form>
</body>
<script Language="c#" runat="Server">
  public void Page_Load()
  {
    if (!(Page.IsPostBack))
    {
      ArrayList arrColors = new ArrayList(5);
      arrColors.Add("Red");
      arrColors.Add("Green");
      arrColors.Add("Blue");
      arrColors.Add("Orange");
      arrColors.Add("Purple");
      ColorList.DataSource = arrColors;
      Page.DataBind();
   }
  }
  public void SubmitBtn_Click(object sender, EventArgs e)
  {
    string newColor = ColorList.SelectedItem.Text;
    SelectedColor.Text= "You selected " + newColor;
    MyHeader.BackColor= newColor;
  }
</script>
</html>
