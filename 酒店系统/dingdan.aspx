<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdan.aspx.cs" Inherits="dingdan"  Debug="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="header.css" rel="stylesheet" type="text/css" />
    <link href="scdd.css" rel="stylesheet" type="text/css" />
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".flip").click(function () {
            $(".panel").slideToggle("fast");
        });
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id= "box"">
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
        <h2 class="item">添加购物车</h2>
        <div class="iox">
            
           <div class="aa"><a href="测试.aspx" class="btn btn-default" role="button">返回</a></div>
            <p class="text-warning">房间号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
            <p class="text-warning">房间名：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
            <p class="text-warning">入住天数：<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></p>
            <p class="text-warning">房间价格：¥<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
            <p class="text-warning">房间系列：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p>
            <p class="text-warning">入住时间：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>--<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></p>
            <p style="width:80px; margin-left:370px; margin-top:48px;"><asp:Button ID="Button1" runat="server" Text="添加到我的订单" onclick="Button1_Click" class="btn btn-warning"/></p>
        </div>
      
    </div>
    </form>
</body>
</html>
