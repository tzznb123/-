<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingfang.aspx.cs" Inherits="dingfang" Debug="true"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="tkal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
 <%--   <script>
        $(".calendar").click(function () {
            var a = $("#TextBox1").val();
            var b = $("#TextBox2").val();


            $("#HiddenField1").val(a); //js 给服务器控件赋值
            $("#HiddenField2").val(b); //js 给服务器控件赋值
        });</script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
<%--        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenField2" runat="server" />--%>
      <%--  <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        </asp:UpdatePanel>
--%>
        <tkal:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </tkal:ToolkitScriptManager>
        入住：<asp:TextBox ID="TextBox1" runat="server" placeholder="<%DateTime.Now%> "></asp:TextBox>
        结束：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         
        <tkal:CalendarExtender ID="TextBox2_CalendarExtender" runat="server"  Format="yyyy/M/d" 
            Enabled="True" TargetControlID="TextBox2">
        </tkal:CalendarExtender>
        
        <tkal:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Format="yyyy/M/d" 
            Enabled="True" TargetControlID="TextBox1">
        </tkal:CalendarExtender>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </div>


        <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="a"  DataKeyNames="房间号"
            DataSourceID="AccessDataSource1">
        <LayoutTemplate><div id="a" runat="server"></div></LayoutTemplate>

        <ItemTemplate>
        <div>
        <div>
        <p><%#Eval("房间号") %></p>
        <p><%#Eval("房间名") %></p>
        <p><%#Eval("早餐") %></p>
        <p><%#Eval("系列名") %></p>
        <p><%#Eval("价格") %></p>
        <p><a href="dingdan.aspx?f_id=<%#Eval("房间号") %>&f_xl=<%#Eval("系列名") %>">预定</a></p>

        </div>
        
        
        </div>
        
        
        </ItemTemplate>



        </asp:ListView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            
            
            SelectCommand="SELECT 房间系列.系列名, 房间详细.房间号, 房间详细.房间名, 房间详细.价格, 房间详细.早餐, 房间详细.xl_id, 房间详细.开始时间, 房间详细.结束时间, 房间详细.添加时间前 FROM (房间系列 INNER JOIN 房间详细 ON 房间系列.xl_id = 房间详细.xl_id) WHERE (房间详细.定 = true)">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
