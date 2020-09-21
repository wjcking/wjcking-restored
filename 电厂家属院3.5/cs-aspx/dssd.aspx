<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="C#" runat="server">

private void IsNaN(object s,EventArgs e)
{
try
{
if(msg.Text!="")
{
int intCount=Convert.ToInt32(msg.Text);
Response.Write(intCount);
}
}
catch
{
Response.Write("can not change num");
}
}

</script>
<form runat=server>
<asp:textbox id=msg runat=server/>
<asp:button id=btn runat=server text="click" onclick=IsNaN/>
</form>