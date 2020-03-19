
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_center.aspx.cs" Inherits="user_center" Debug="true"%>

<!DOCTYPE html>
<html lang="zh">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="header.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-3.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function () {
        $(".flip").click(function () {
            $(".panel").slideDown(2000);
        });
    });
    </script>
    <style type="text/css">
    #BB
    {
        width:1920px;
        height:auto;
        min-height:930px;
        margin:0 auto;
        margin-top:-4px;
        margin-left:0px;
        background-image:url(image/fangj.jpg);
        
        }
        .box
        {
             width:1000px;
             min-height:500px;
             top:200px;
             left:450px;
             margin:0 auto;
             position:absolute;
              
             
            }
        .ff
        {
            width:300px;
            height:375px;
            float:left;
            margin-left:30px;
             text-align:center;
                 background-color: #C1CDC1;
                 border-radius:40px;
                 margin-top:20px;
            }
            .rrr
            {
                text-align:center;
            }
         .rrr a
         {
              text-decoration:none;
              color:#1E90FF;
              width:80px;
              height:30px;
             border:1px solid #D3D3D3;
             background-color:White;
             padding:5px;
                border-radius:7px;
                left:110px;
                top:20px;
             }
          .rrr a:hover
          {
              color:White;
              background-color:#00BFFF;
              }  
               .gua
                {
                    width:117px;
                    height:176px;
                    
                    top:335px;
                       position:fixed;
                     z-index: 11111;
                     background-color:#8B7D7B;
                     border-radius:5px;
                     margin-left:5px;
                    }
              .gua p
              {
                  text-align:center;
                  }  
              .gua p a
              {
                  color:White;
                  text-decoration:none;
                  }
               .gua p a:hover
               {
                   color:Orange;
                   } 
                   #bottom
            {
                width:100%;
                height:50px;
                background-color:#8B7D7B;
                       position:fixed;
                     z-index: 11111;
                     top:920px;
                     left:0px;
                     text-align:center;
                
                }
                
                
                      #bottom  span 
            {
                width:100px;
                height:50px;
                background-color:#8B7D7B;
                margin:0 auto;
                line-height:50px;
                padding:5px 50px 5px 50px;
                font-size:20px;
                
                
                }
                *
                {
                    position:relative;
                    }
</style>
</head>
<body>
    <form id="form1" runat="server">

        <div id="BB">
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
  <div class="box"> 
  <h1 style="text-align:center; color:Gray;">预定的房间</h1>
   <asp:ListView ID="ListView1"  runat="server" 
          ItemPlaceholderID="itemholder" DataSourceID="AccessDataSource1">
    <LayoutTemplate>
    <div id="itemholder" runat="server"></div>
    </LayoutTemplate>
    <ItemTemplate>
    <div class="ff"><h1>房号:<%#Eval("房间号")%></h1>
    
     <p>房间名:<%#Eval("房间名")%></p>
     <p>房间系列:<%#Eval("房间系列")%></p>
    <p> 金额:¥<%#Eval("价钱")%></p>
     <p>入住时间:<%#Eval("订房开始时间")%></p>
     <p><%#Eval("结束时间")%></p>
     <p>入住天数:<%#Eval("入住天数")%></p>
     <p class="rrr"><a href="tf.aspx?fh=<%#Eval("房间号")%>" class="btn btn-block btn-default">申请退房</a></p>
     </div>
    </ItemTemplate>
    </asp:ListView>
      <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
          DataFile="~/mydatabase1.mdb" 
          SelectCommand="SELECT 房间号, 房间名, 客户名, 身份证号, 联系电话, 订房开始时间, 结束时间, 价钱, 房间系列, 是否结账, 房间图, 产品包括, 入住天数 FROM 订单查询 WHERE (是否结账 = true) and ([身份证号] =?)">
      <SelectParameters>
      <asp:SessionParameter Name="身份证号" SessionField="number" Type="String" /></SelectParameters>
      </asp:AccessDataSource>
      </div>
</div>
<div class="clr" style="clear:both;"></div>
  
  
<div id="bottom">
<div class="bnm"><span class="sdf">关于我们</span><span>合作加盟</span><span>联系我们</span><span>社交媒体</span></div>

</div>
    </form>
</body>
</html>
