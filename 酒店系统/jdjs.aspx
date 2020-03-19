<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jdjs.aspx.cs" Inherits="jdjs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="jianshao.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
    
    <div id="head">
    <img alt="" src="image/图标.png" />
    <h2>主&nbsp;题&nbsp;酒&nbsp;店</h2>



    <div class="list_a">
    <a href="HomePage.aspx">首页</a>
    <a href="user_center.aspx">酒店新闻</a>
    <a href="测试.aspx">客房预订</a>
    <a href="">订单查询</a>
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
         </div>
     </div>

      <div id="top">
   <div class="box3">
  <div class="t_left">
      <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="news_holder" 
          DataSourceID="AccessDataSource1">
      <LayoutTemplate>
                <div runat ="server" id="news_holder"></div>
       </LayoutTemplate>
    <ItemTemplate>
                <h3 id="NewsTTL" ><%#Eval("news_title") %></h3>
                <p class ="tc">
                    <span id="NewsDate">日期: <%#Eval("news_date","{0:d}") %></span>
                    <span id="NewsFrom">来源: <%#Eval("news_from") %></span>
                 </p>

                 <div id="newsContent" class ="cke_show_borders">
                    <%#Eval("news_content") %>
                 </div>
            
            </ItemTemplate>
      </asp:ListView>

      <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
          DataFile="~/mydatabase1.mdb" 
          SelectCommand="SELECT * FROM [T_NEWS] WHERE ([news_id] = ?)">
          <SelectParameters>
              <asp:QueryStringParameter Name="news_id" QueryStringField="nid" Type="Int32" />
          </SelectParameters>
      </asp:AccessDataSource>

  </div>
 
  <div class="t_right">
    <img  alt="" src="image/t1.jpg" width="250px" height="220px" class="img-rounded"/>
    <img  alt="" src="image/t2.jpg" width="250px" height="220px" class="img-rounded"/>
    <img  alt="" src="image/t3.jpg" width="250px" height="220px" class="img-rounded"/>



  </div>
   
   </div>
   </div>

    </div>
    </form>
</body>
</html>
