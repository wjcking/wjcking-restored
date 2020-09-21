
<script language=cs runat=server>
public string Alert(string msg)
{
   Response.Write("<script>alert('"+msg+"')<");
   Response.Write("/");
   Response.Write("script>");
return msg;
}

private void Page_load()
{
Alert("dfsdf");
}
</script>

