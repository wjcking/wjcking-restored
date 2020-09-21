<%@ Page Inherits="MyCodeBehind" Src="code/CodeBehind1.cs" %>
<html>
<body>
  Please enter your name then click the button below:<br /> <br />
  <form action="CodeBehind1.aspx" Method="Post" Runat="Server">
    <asp:TextBox id="name" runat="Server" /> <br />
    <asp:Button text="ClickMe!" runat="server" />
    <br /><br />
    <asp:Label id="message" runat="Server" />
  </form>
</body>
</html>
