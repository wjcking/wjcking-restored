<head>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script language=cs runat=server>
private void Page_load()
{

if(Request.QueryString["reg"]=="true")
msgreg.Text="您已经注册成功,请登陆";
else
msgreg.Text="";
}

private void Sub_reg(object sender,EventArgs e)
{
if(Page.IsValid)
{
string strCon="Provider=Microsoft.Jet.OleDb.4.0;";
strCon+="Data Source="+Server.MapPath("db_user.mdb");
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from user_infor where mail='"+UID.Text+"' and pwd='"+PWD.Text+"'";
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strSQL,objCon);
objCon.Open();
DataSet objDS=new DataSet();
objAdapter.Fill(objDS,"user_infor");
mydata.DataSource=objDS.Tables[0].DefaultView;
mydata.DataBind();
objCon.Close();
}

}
</script>
</head>


<form runat=server>
<br><br><br><br>
<center>
基本上做出来了,不完善的地方很多,少加密技术,没有仔细布局<br>
还有一个问题就是,输入没有此用户信息的,不知道该怎么告诉用户<br>
只能，干巴巴的把字段名显示出来就是不能把信息显示到别的页面上,<br>
倒腾了半天.哎~<br>

我没有白做，还是学了学新知识，把以前的就知识都巩固了一变，以后我会改进的<br>
等我做出来网站，我第一个让你过目。<br>
E-mail&nbsp&nbsp：<asp:textbox id=UID runat=server />

<br><br>
密&nbsp&nbsp&nbsp&nbsp码：<asp:textbox textmode=password id=PWD runat=server/>

<br>
<asp:button id=login runat=server Text=login onclick=Sub_reg />
<input type=reset value=Reset name=res id=res ><br><br>
如果您没有注册请先<a href="Reg.aspx">注册</a>.

<table>
<tr><td>
 <asp:RequiredFieldValidator id="emailReqVal"
            ControlToValidate="Uid"
            ErrorMessage="电子邮件。"
            Display="Dynamic"
            Font-Name="Verdana" Font-Size="12"
            runat=server>
	    E-mail不能为空
        </asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator id="emailRegexVal"
            ControlToValidate="Uid"
            ErrorMessage="电子邮件。"
            Display="Static"
            ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil|info|cn|cc|)$"
            Font-Name="Arial" Font-Size="11"
            runat=server>
            不是有效的电子邮件地址：例 wjcking@cs-aspx.net
        </asp:RegularExpressionValidator>
</td></tr><tr><td>
<asp:RequiredFieldValidator id=PwdReqVal
            ControlToValidate="PWD"
            ErrorMessage="密码"
            Display="Dynamic"
            Font-Name="Verdana" Font-Size="12"
            runat=server>
	   密码不能为空
        </asp:RequiredFieldValidator></td></tr>
</table>
<asp:label id=msgreg runat=server forecolor=blue/>
<asp:datagrid id=mydata runat=server/>
<center>
</form>