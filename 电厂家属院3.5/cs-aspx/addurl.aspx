<%@ Page Inherits="AddUrl" Src="code/addurl.cs" %>
<script language="JavaScript">
var intCount=0;
function Self_Close()
{
if(intCount==1)
window.close();
else
intCount++;
time_id=setTimeout("Self_Close()",2000);
}
Self_Close();
</script>
<body bgcolor="#310097">
<div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>
    <asp:label ID=InsertMsg runat=server ForeColor="#FFFFFF"/></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
