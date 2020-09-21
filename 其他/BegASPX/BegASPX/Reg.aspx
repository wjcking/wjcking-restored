<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.OleDb" %>

<script language=cs runat=server>
Session["regp"]=0;

private void Reg(object sender,EventArgs e)
{
if(Page.IsValid)
{
string strCon="Provider=Microsoft.Jet.OleDb.4.0;";
strCon+="Data Source="+Server.MapPath("db_user.mdb");
OleDbConnection objCon=new OleDbConnection(strCon);
string strSQL="select * from user_infor";
OleDbDataAdapter objAdapter=new OleDbDataAdapter(strSQL,objCon);
DataSet objDS=new DataSet();
objAdapter.Fill(objDS,"user_infor");

DataTable objTable=null;
DataRow objnewRow=null;

objTable=objDS.Tables["user_infor"];
objnewRow=objTable.NewRow();
objnewRow["mail"]=Uid.Text;
objnewRow["pwd"]=Pwd.Text;
objnewRow["qq"]=QQ.Text;
objnewRow["infor"]="<pre>"+userinfor.Text+"<pre>";
objTable.Rows.Add(objnewRow);

OleDbCommandBuilder objBuilder=null;

objBuilder=new OleDbCommandBuilder(objAdapter);
//objAdapter.UpdateCommand=objBuilder.GetUpdateCommand();
objAdapter.InsertCommand=objBuilder.GetInsertCommand();
//objAdapter.DeleteCommand=objBuilder.GetDeleteCommand();

objAdapter.Update(objDS,"user_infor");
objCon.Open();
OleDbCommand objCmd=new OleDbCommand(strSQL,objCon);
Session["regp"]=1;
Response.Redirect("temp.aspx?reg="+Session["regp"].ToString());

try
{
objCon.Open();
objCmd.ExecuteNonQuery();
}
catch(Exception ex)
{
Response.Write(ex.Message);
Response.End();
}
finally
{
if(objCon.State==ConnectionState.Open)
objCon.Close();
/* *************************************************************************
objCmd.Parameters.Add(Uid.Text,OleDbType.VarChar,40,Uid.Text);
objCmd.Parameters.Add(Pwd2.Text,OleDbType.VarChar,20,Pwd2.Text);
objCmd.Parameters.Add(QQ.Text,OleDbType.VarChar,20,QQ.Text);
objCmd.Parameters.Add(userinfor.Text,OleDbType.VarChar,200,userinfor.Text);
************************************************************************** */
}
}
}
</script>
<form runat=server>
<center>
<br>
<br>
用户注册
<br>
<br>
<table>
<tr><td>
电子邮件</td><td><asp:textbox id=Uid runat=server/></td>
</tr>
<tr>
<td>密码</td><td><asp:textbox textmode=password id=Pwd runat=server/></td>
</tr>
<tr>
<td>确认密码</td><td><asp:textbox textmode=password id=Pwd2 runat=server/></td>
</tr>
<td>QQ</td><td><asp:textbox  id=QQ runat=server/></td>
</tr>

<tr><td>个人信息</td><td>
<asp:textbox id=userinfor runat=server textmode=multiline rows=5/>


</table>
<center>
<asp:button  id=Sub runat=server text=注册 onclick=Reg/>

<input type=reset value="重置" >
<hr width=%75>
<center>
<table>
<tr>
<td>
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
            ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil|info|cc|cn)$"
            Font-Name="Arial" Font-Size="11"
            runat=server>
            不是有效的电子邮件地址：例 wjcking@cs-aspx.net
        </asp:RegularExpressionValidator>
</td>
</tr>
<tr><td>
<asp:RequiredFieldValidator id="passwdReqVal"
              ControlToValidate="Pwd"
              ErrorMessage="密码。"
              Display="Dynamic"
              Font-Name="Verdana" Font-Size="12"
              runat=server>
              请输入密码
          </asp:RequiredFieldValidator>
        
</td>
</tr>
<tr><td>
 <asp:RequiredFieldValidator id="passwd2ReqVal"
            ControlToValidate="Pwd2"
            ErrorMessage="重新输入密码。"
            Display="Dynamic"
            Font-Name="Verdana" Font-Size="12"
            runat=server>
            请输入密码
        </asp:RequiredFieldValidator>
        <asp:CompareValidator id="CompareValidator1"
            ControlToValidate="Pwd"
		 ControlToCompare="Pwd2"
            ErrorMessage="重新输入密码。"
           Display="Static"
            Font-Name="Arial" Font-Size="11"
            runat=server>
            密码字段不匹配
</asp:CompareValidator>

</td></tr><tr><td>
 <asp:RequiredFieldValidator id="userinforReqVal"
            ControlToValidate="userinfor"
            ErrorMessage="个人信息"
            Display="Dynamic"
            Font-Name="Verdana" Font-Size="12"
            runat=server>
	    个人信息不能为空.
        </asp:RequiredFieldValidator>
</td>
</table>	
<br>
<asp:label id=emailmsg runat=server forecolor=red/><br>
<asp:label id=pwdmsg runat=server forecolor=red/><br>
<asp:label id=pwdmsg2 runat=server forecolor=red/><br>

<asp:label id=qqmsg runat=server forecolor=red/><br>
<asp:datagrid id=mydata runat=server forecolor=red font-size=9pt/>

</center>
</form>