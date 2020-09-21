<%@ Page Inherits="Vote" Src="code/vote.cs" %>
<html>

<head>
<script language=javascript>
var i=0;
function Ret()
{
if(i==2)
location.href="default.aspx";
else
i++;
time_id=setTimeout("Ret()",1000);
}
Ret();
</script>
</head>
<body bgcolor=#003399>
<center>
<br><br><br><br><br><br><br>
<asp:label id=msgout text="Successfully Returnning HomePage...." runat=server forecolor=white/>

</body>
</html>