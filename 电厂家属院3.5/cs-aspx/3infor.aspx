<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script language="C#" runat="server">
public void Page_Load()
{
string strSQL="select * from db_jjs";

string strCon="Provider=Microsoft.Jet.OleDb.4.0;";
strCon+="Data Source="+Server.MapPath("database\\db_friend.mdb");
OleDbConnection objCon=new OleDbConnection(strCon);
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgtable.DataSource=objCmd.ExecuteReader();
dgtable.DataBind();
objCon.Close();
}
public void Infor_Sea(object sender,EventArgs e)
{

string strSQL="select * from db_jjs";
if(ddlinfor.Items[0].Selected)
strSQL="select * from db_jjs";
else  if(ddlinfor.Items[1].Selected)
strSQL="select * from db_hls";
else if(ddlinfor.Items[2].Selected)
strSQL="select * from db_pwd";
string strCon="Provider=Microsoft.Jet.OleDb.4.0;";
strCon+="Data Source="+Server.MapPath("database\\db_friend.mdb");
OleDbConnection objCon=new OleDbConnection(strCon);
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
objCon.Open();
dgtable.DataSource=objCmd.ExecuteReader();
dgtable.DataBind();
objCon.Close();
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>
<body>
<center><form runat="server">
  <table width="90%" border="0">
    <tr> 
      <td> <p>&nbsp; </p>
        <table width="90%" border="0">
          <tr> 
            <td width="8%">&nbsp;</td>
            <td width="82%"><asp:dropdownlist runat="server" ID=ddlinfor> 
                <asp:listitem>衡水职教中心信息</asp:listitem>
                <asp:listitem>不是人揍学校信息</asp:listitem>
                <asp:listitem>管理人员名单表</asp:listitem>
              </asp:dropdownlist></td>
            <td width="10%"><asp:button ID="btnSea" runat="server" text="   OK   " onclick=Infor_Sea/>&nbsp;</td>
          </tr>
        </table>
        <p>&nbsp;</p></td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td colspan="2"><center><asp:datagrid runat=server ID="dgtable"
	  CellPadding=3
	  font-name="arial"
	  font-size=8pt
	  headerstyle-backcolor="#dcdcdc"
	  headerstyle-forecolor="blue"/></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table></center></form>
</center>
</body>
</html>