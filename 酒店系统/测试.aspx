<%@ Page Language="C#" AutoEventWireup="true" CodeFile="测试.aspx.cs" Inherits="测试" Debug="true" %>



<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="tkal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="header.css" rel="stylesheet" type="text/css" />
    <link href="测试.css" rel="stylesheet" type="text/css" />
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".flip").click(function () {
            $(".panel").slideToggle("slow");
        });
    });
</script>
</head>
<body>
    <form id="form1" runat="server">


    <div id="box">    
    <div class="panel">

<div class="li_a">
<a href="HomePage1.aspx">酒店首页</a>
<a href="dingdan_g.aspx">查看订单</a>
<a href="user_center.aspx">查看预定房间</a>
<a href="测试.aspx">房间预定</a>
<a href="HomePage.aspx">退出登陆</a>

</div>
</div>
 <p class="flip glyphicon glyphicon-triangle-bottom"></p>
 <h1>房间预定</h1>
    <div id="list_view">
        <tkal:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </tkal:ToolkitScriptManager>
        <p class="a">
         <asp:TextBox ID="TextBox1" runat="server" placeholder="入住" class="form-control" Width="200px"></asp:TextBox>
         <asp:TextBox ID="TextBox2" runat="server" placeholder="退房" class="form-control" Width="200px"></asp:TextBox>
         
        <tkal:CalendarExtender ID="TextBox2_CalendarExtender" runat="server"  Format="yyyy/M/d" 
            Enabled="True" TargetControlID="TextBox2">
        </tkal:CalendarExtender>
        
        <tkal:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Format="yyyy/M/d" 
            Enabled="True" TargetControlID="TextBox1">
        </tkal:CalendarExtender>
        <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="查询" onclick="Button1_Click" /></p>
           <div class="clr"></div>
 
        <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="a"  DataKeyNames="房间号"
            DataSourceID="AccessDataSource1">
        <LayoutTemplate><div id="a" runat="server"></div></LayoutTemplate>

        <ItemTemplate>
        <div class="i_box">
        <div class="img"><img width="120px;" height="120px;" alt="" class="img-thumbnail" src='<%#Eval("房间图","image/{0}") %>'"/></div>
        <div class="content">
        <p><%#Eval("系列名") %>|<%#Eval("房间名") %>|净房</p>
        <p style="color:#F15B47;"><%#Eval("早餐") %></p>
        <p></p>
        
        

        </div>
        
        <div class="foot">
        <p style="color:#F15B47">¥<%#Eval("价格") %>/间/晚</p>
        <p><a  class="btn btn-primary btn-lg active"  href="dingdan.aspx?f_id=<%#Eval("房间号") %>&f_xl=<%#Eval("系列名") %>">预定</a></p>
        
        
        
        
        
        </div>
        <div class="clr"></div>
        </div>
        
        
        </ItemTemplate>



        </asp:ListView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            
            
            
            
            
            SelectCommand="SELECT 房间系列.系列名, 房间详细.* FROM (房间系列 INNER JOIN 房间详细 ON 房间系列.xl_id = 房间详细.xl_id) where 定 = true">
        </asp:AccessDataSource>
    </div>
    </div>
    </form>
</body>
</html>
