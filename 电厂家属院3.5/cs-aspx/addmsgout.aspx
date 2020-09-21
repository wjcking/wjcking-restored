<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %>
<html>
<script>
var i=1;
function Return()
{
if(i==3)
location.href="guestbook.aspx"
else
i++;
time_id=setTimeout("Return()",1);
}
Return();
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>
<body bgcolor="#0000CC" text="#FFFFFF">
<div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>记录添加成功，2秒钟后转向留言板.</p>
</div>
</body>
</html>
