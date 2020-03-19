<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdan_g.aspx.cs" Inherits="dingdan_g" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="header.css" rel="stylesheet" type="text/css" />
    <link href="body.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".flip").click(function () {
            $(".panel").slideDown(2000);
        });
    });
    $(document).ready(function () {
        $(".l_bos").mouseenter(function () {
            $(".l_bos").css("background-color", "#CDC1C5");
        });
        $(".l_bos").mouseleave(function () {
            $(".l_bos").css("background-color", "#E9E9E4");
        });
    });
</script>
 
</head>
<body>
    <form id="form1" runat="server">
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
    
    <div id="amo" class="list" >
    <h1>订单列表</h1>
        <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="itm_box" 
            DataSourceID="AccessDataSource1">

        <LayoutTemplate><div id="itm_box" runat="server"></div></LayoutTemplate>
        <ItemTemplate>
        <div class="l_bos">
        <div class="l_imag">
        <img alt="" class=class="img-rounded" src='<%#Eval("房间图","image/{0}") %>'"/>
        </div>
        
        <div class="l_content">
        <h2><%#Eval("房间号") %>&nbsp;&nbsp;<%#Eval("房间系列") %>&nbsp;&nbsp;<%#Eval("房间名") %></h2>
        <p>入住时间：<%#Eval("订房开始时间") %>--<%#Eval("结束时间") %></p>
        <p>产品包括：<p class="sc"><%#Eval("产品包括") %></p></p>


        </div>
        
           <div class="l_button">
        
        <p>价格：￥<%#Eval("价钱") %></p>
        <p><a class="a_1" href="dingdan_que.aspx?fh=<%#Eval("房间号") %>" style="display:block; width:80px; height:40px; line-height:40px; background-color:#FF6347; border-radius:4px; text-align:center; text-decoration:none; color:White;">结算</a></p>
        
        </div>
        
        <div class="clr"></div>
        
        </div>
        
     
        </ItemTemplate>
        </asp:ListView>
    
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            SelectCommand="SELECT 房间号, 房间名, 客户名, 身份证号, 联系电话, 订房开始时间, 结束时间, 价钱, 房间系列, 是否结账, 房间图, 产品包括, 入住天数 FROM 订单查询 WHERE (是否结账 = false)and ([身份证号]=?)">
            <SelectParameters>
            <asp:SessionParameter Name="身份证号" SessionField="number" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    






        </div>
      
    </form>
       <script type="text/javascript">
           function handler(event) {
               alert(event.data.foo)
           }
           $(".a_1").bind("click", { foo: "支付成功，感谢您的光临！" }, handler);
           //$("input").bind("click",function(){
           //        	alert($(this).val());
           //);
		</script>
</body>
</html>
