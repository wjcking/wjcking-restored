 <%@ Page language="c#" %> 
  <%@ Import Namespace="System.Web.Security" %> 
  <html> 
   <head> 
   <script language="C#" runat="server"> 
   public void encryptString(Object sender, EventArgs e) 
   { 
   SHA1.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text,"SHA1"); 
   MD5.Text =FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5") ; 
   } 
   </script> 
   </head> 
   <body> 
   <form runat="server" ID="Form1"> 
   <p> 
   <b>Original Clear Text Password: </b> 
   <br> 
   <asp:Textbox id="txtPassword" runat="server" /> 
   <asp:Button runat="server" text="Encrypt String" onClick="encryptString" ID="Button1" /> 
   </p> 
   <p> 
   <b>Encrypted Password In SHA1: </b> 
   <asp:label id="SHA1" runat="server" /> 
   </p> 
   <p> 
   <b>Encrypted Password In MD5: </b> 
   <asp:label id="MD5" runat="server" /> 
   </p> 
   </form> 
   </body> 
  </html> 
   
   