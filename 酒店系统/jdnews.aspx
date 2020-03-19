<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jdnews.aspx.cs" Inherits="jdnews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="jdnews.css" rel="stylesheet" type="text/css" />
    <link href="homepage.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
      <script type="text/javascript">
        $(document).ready(function () {
            $("#news #newsContent a").click(function () {
                $("#news ").fadeIn(200);
                
            });
            $("#ddl_news").click(function () {
                $("#news").fadeOut(200);
            });
        });
        </script>

        <script type ="text/javascript">
            $(document).ready(function () {
                $("#ddl_news").change(function () {
                    var _nid = $(this).val();
                    var _qs = "nid=" + _nid;
                    $("#news ").load("测试2.aspx #newsContent", _qs).hide().show(300);
                });
            });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#nav>li").hover(function () {
                $(this).children("ul").fadeIn(200);

            }, function () {
                $(this).children("ul").fadeOut(200);
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
    
    <div id="head">
    <img alt="" src="image/图标.png" />
    <h2>主&nbsp;题&nbsp;酒&nbsp;店</h2>



    <div class="list_a">
    <a href="HomePage.aspx">首页</a>
    <a href="测试.aspx">客房预订</a>
    <a href="dingdan_g.aspx">订单查询</a>
    <a>联系我们</a>
    </div>
    </div>
      

      <div class="banner">
         <div class="banner_wrap">
             <ul class="banner_img clear_fix">
                 <li class="ig"><img src="image/bannerA_02.jpg" alt=""/></li>
                 <li class="ig"><img src="image/1.jpg" alt=""/></li>
                 <li class="ig"><img src="image/2.jpg" alt=""/></li>
                 <li class="ig"><img src="image/3.jpg" alt=""/></li>
             </ul>
             <div class="banner_left">
                 <img src="image/向左.png" alt=""/>
             </div >
             <div class="banner_right">
                 <img src="image/向右.png" alt=""/>
             </div>
             <div class="drop" style="position:absolute; width:600px; height:50px; top:200px; left:650px; pacity:0.8">
             <asp:DropDownList ID="ddl_news" runat="server" DataSourceID="AccessDataSource1"  Width="600px" Height="50px" Font-Size="15px"  background="rgb(255,255,255,0.9) " DataTextField="news_title" DataValueField="news_id">
        </asp:DropDownList></div>
         </div>
     </div>
     
   <div id="top">
   <div class="box3">
  <div class="t_left">
  <div class="t_left1">

  <h4 style="margin-left:17px;">酒店新闻</h4>
 
    

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            SelectCommand="SELECT [news_id], [news_title] FROM [T_NEWS]">
        </asp:AccessDataSource>
      <asp:BulletedList ID="BulletedList1" runat="server" 
          DataSourceID="AccessDataSource3" DataTextField="news_title" DisplayMode="LinkButton" 
          DataValueField="news_id" onclick="BulletedList1_Click">
      </asp:BulletedList>
      <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
          DataFile="~/mydatabase1.mdb" 
          SelectCommand="SELECT [news_id], [news_title] FROM [T_NEWS]">
      </asp:AccessDataSource>
  </div>
  </div>
  
  <div class="t_right">

  <img  alt="" src="image/t1.jpg" width="250px" height="220px" class="img-rounded"/>
    <img  alt="" src="image/t2.jpg" width="250px" height="220px" class="img-rounded"/>
    <img  alt="" src="image/t3.jpg" width="250px" height="220px" class="img-rounded"/>
  </div>
  
   
   </div>
   </div>
   <div id="news">
   
   <div style="clear:both;"></div>
   
   </div>
    </div>
    </form>
</body>
</html>
