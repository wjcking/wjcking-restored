<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Globalization" %>
<script Language="c#" runat="server">
  void Page_Load(object sender, EventArgs e)
  {
    if (!(Page.IsPostBack))
    {
      EventData.DataSource = LoadMyCalendarData();
      EventData.DataBind();
    }
  }

  protected DataSet LoadMyCalendarData()
  {
     string sourceXml = Server.MapPath("MyCalendar.xml");
      if (!(File.Exists(sourceXml)))
      {
         return null;
      }
     DataSet cachedDataSet = (DataSet)Session["MyCalendarData"];
     if (!(cachedDataSet == null))
     {
        return cachedDataSet;
     }
    DataSet dataSet = new DataSet();
    try
    { 
       dataSet.ReadXml(sourceXml);
       Session["MyCalendarData"] = dataSet;
    }
    catch (Exception e)
    {
       ErrorMessage.Text = e.Message;
       dataSet = null;
    }
    return dataSet;
  }

  void DEDR_Edit(object sender, DataGridCommandEventArgs e)
  {
     EventData.EditItemIndex = Convert.ToInt32(e.Item.ItemIndex);
     EventData.DataSource = LoadMyCalendarData();
     EventData.DataBind();
  }

  void DEDR_Update(object sender, DataGridCommandEventArgs e)
  {
     DataSet dataSet  = LoadMyCalendarData();
     int row = Convert.ToInt32(e.Item.ItemIndex);
     TextBox EditText = null;
     EditText = (TextBox)e.Item.FindControl("txtShortDesc");
     dataSet.Tables[0].Rows[row]["ShortDesc"] = EditText.Text;
     EditText = (TextBox)e.Item.FindControl("txtDetailDesc");
     dataSet.Tables[0].Rows[row]["DetaiLDesc"] = EditText.Text;
     EditText = (TextBox)e.Item.FindControl("txtEventDate");
     dataSet.Tables[0].Rows[row]["EventDate"]= EditText.Text;
     EditText = (TextBox)e.Item.FindControl("txtStartTime");
     dataSet.Tables[0].Rows[row]["StartTime"] = EditText.Text;
     EditText = (TextBox)e.Item.FindControl("txtEndTime");
     dataSet.Tables[0].Rows[row]["EndTime"] = EditText.Text;
     dataSet.WriteXml(Server.MapPath("MyCalendar.xml"));
     Session["MyCalendarData"] = null;
     EventData.EditItemIndex = -1;
     EventData.DataSource = LoadMyCalendarData();
     EventData.DataBind();
  }

  void DEDR_Cancel(object sender, DataGridCommandEventArgs e)
  {
    EventData.EditItemIndex = -1;
    Session["MyCalendarData"] = null;
    EventData.DataSource = LoadMyCalendarData();
    EventData.DataBind();
  }

  void DEDR_Delete(object sender, DataGridCommandEventArgs e)
  {
    DataSet dataSet = LoadMyCalendarData();
    int row = Convert.ToInt32(e.Item.ItemIndex);
    dataSet.Tables[0].Rows[row].Delete();
    dataSet.WriteXml(Server.MapPath("MyCalendar.xml"));
    Session["MyCalendarData"] = null;
    EventData.EditItemIndex = -1;
    EventData.DataSource = LoadMyCalendarData();
    EventData.DataBind();
  }

  void DEDR_Add(object sender, EventArgs e)
  {
    DataSet dataSet = LoadMyCalendarData();
    DataRow newRow;
    newRow = dataSet.Tables[0].NewRow();
    newRow["ShortDesc"] = "";
    newRow["DetailDesc"] = "";
    newRow["EventDate"] = "";
    newRow["StartTime"] = "";
    newRow["EndTime"] = "";
    dataSet.Tables[0].Rows.Add(newRow);
    dataSet.WriteXml(Server.MapPath("MyCalendar.xml"));
    Session["MyCalendarData"] = null;
    EventData.DataSource = LoadMyCalendarData();
    EventData.DataBind();
    EventData.EditItemIndex = EventData.Items.Count - 1;
    EventData.DataSource = LoadMyCalendarData();
    EventData.DataBind();
  }
</script>


<html>
  <body>
    <form runat="server">
      <asp:Label id="ErrorMessage" runat="server" /><br/>
      <asp:LinkButton OnClick="DEDR_Add" Text="Add new event"
           runat="server"/><br/>
      <asp:DataGrid id="EventData"
           AutoGenerateColumns="false" width="100%" runat="server"
           OnEditCommand="DEDR_Edit"
           OnUpdateCommand="DEDR_Update"
           OnCancelCommand="DEDR_Cancel"
           OnDeleteCommand="DEDR_Delete">
        <HeaderStyle ForeColor="White" BackColor="DodgerBlue"
                     Font-Bold="true"/>
        <ItemStyle BackColor="White"/>
        <AlternatingItemStyle BackColor="Gainsboro"/>
        <Columns>

          <asp:TemplateColumn HeaderText="Date">
            <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "EventDate") %>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="txtEventDate" Size="25";
                   Text='<%# DataBinder.Eval(Container.DataItem,"EventDate") %>'
                   runat="server"/>
            </EditItemTemplate>
          </asp:TemplateColumn>

          <asp:TemplateColumn HeaderText="Event">
            <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "ShortDesc") %>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="txtShortDesc" Size="25";
                   Text='<%# DataBinder.Eval(Container.DataItem,"ShortDesc") %>'
                   runat="server"/>
            </EditItemTemplate>
          </asp:TemplateColumn>

          <asp:TemplateColumn HeaderText="Description">
            <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "DetailDesc") %>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="txtDetailDesc" Size="50"
                 Text='<%# DataBinder.Eval(Container.DataItem, "DetailDesc") %>'
                   runat="server"/>
            </EditItemTemplate>
          </asp:TemplateColumn>

          <asp:TemplateColumn HeaderText="Start Time">
            <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "StartTime") %>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="txtStartTime" Size="7"
                   Text='<%# DataBinder.Eval(Container.DataItem, "StartTime") %>'
                   runat="server"/>
            </EditItemTemplate>
          </asp:TemplateColumn>

          <asp:TemplateColumn HeaderText="EndTime">
            <ItemTemplate>
              <%# DataBinder.Eval(Container.DataItem, "EndTime") %>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="txtEndTime" Size="7"
                   Text='<%# DataBinder.Eval(Container.DataItem, "EndTime") %>'
                   runat="server"/>
            </EditItemTemplate>
          </asp:TemplateColumn>

          <asp:TemplateColumn>
            <ItemTemplate>
              <asp:LinkButton CommandName="Edit"   Text="Edit"
                   runat="server"/>
              <asp:LinkButton CommandName="Delete" Text="Delete"
                   runat="server"/>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:LinkButton CommandName="Cancel" Text="Cancel"
                   runat="server"/>
              <asp:LinkButton CommandName="Update" Text="Update"
                   runat="server"/>
            </EditItemTemplate>
          </asp:TemplateColumn>
        </Columns>
    </asp:DataGrid>
    </form>
  </body>
</html>
