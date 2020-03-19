<%@ Page Language="C#" AutoEventWireup="true" CodeFile="表单.aspx.cs" Inherits="表单" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script type="text/javascript">
$(document).ready(function(){
  $(".a").click(function(){
  htmlobj=$.ajax({url:"212.txt",async:false});
  $("#div1").html(htmlobj.responseText);
  });
});
</script>
    
</head>
<body>
<form id="form1" runat="server">
    <div>
    
    <div id="div1"><h2>使用 jQuery AJAX</h2></div>
    <a class="a">惦记我</a>
    
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
   <asp:updatepanel ID="Updatepanel1" runat="server">
   <ContentTemplate>
          <asp:TextBox ID="TextBox1" runat="server">
       </asp:TextBox>
          <asp:Button ID="Button1" runat="server" Text="Button" 
              onclick="Button1_Click1" />
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   </ContentTemplate>
       

   
   </asp:updatepanel>





    </div>

</form>

</body>
</html>

