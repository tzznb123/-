﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage1.aspx.cs" Inherits="HomePage1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="homepage.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="js/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/index.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#s1,#s3,#s4").mouseout(function () {
                $("#s1,#s3,#s4").hide(600);
                $("#s2").animate({ left: '-60px' }, 500);
            });

            $("#s2").click(function () {
                $("#s1,#s3,#s4").fadeIn(1200);
            });


            $("#s2").mouseover(function () {
                $("#s2").animate({ left: '60px' }, 500);
                $("#s1,#s3,#s4").fadeOut()
            });

        });
    </script>
    <style type="text/css"">
        .a
        {
            width: 65px;
            height: 65px;
            background-color: #F0F0F0;
            position: fixed;
            border-radius: 30%;
        }
        #s2
        {
            top: 50%;
            left: 50px;
            z-index: 20;
            box-shadow:1px 1px 2px gray;
        }
        #s1
        {
            left: 100px;
            top: 40%;
            z-index: 22;
            display: none;
            width: 55px;
            height: 55px;
            background-color: white;
           box-shadow:1px 1px 1px gray;
        }
        #s3
        {
            left: 170px;
            top: 52%;
            z-index: 22;
            display: none;
            width: 55px;
            height: 55px;
            background-color: white;
            box-shadow:1px 1px 1px gray;
        }
        #s4
        {
            left: 100px;
            top: 63%;
            z-index: 22;
            display: none;
            width: 55px;
            height: 55px;
          box-shadow:1px 1px 1px gray;
            background-color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">

    <div id="head">
    <img alt="" src="image/图标.png" />
    <h2>主&nbsp;题&nbsp;酒&nbsp;店</h2>



    <div class="list_a">
    <a href="HomePage.aspx">首页</a>
    <a href="jdnews.aspx">酒店新闻</a>
    <a href="测试.aspx">客房预订</a>
    <a href="dingdan_g.aspx">订单查询</a>
    <a href="HomePage.aspx">退出登陆</a>
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


    


     <div class="import">
     <div class="import_one">
       <p><span>|</span>
     酒店简介
     <span>|</span></p>
  
     </div>
     
     
     
     
     <div class="import_two">
     <div class="content">
      <h3>简    &nbsp; &nbsp;&nbsp;    介</h3>
      <p>主题酒店是指以酒店所在地最有影响力的地域特征、
      文化特质为素材，设计、建造、装饰、生产和提供
      服务的酒店，其最大特点是赋予酒店某种主题，并
      围绕这种主题建设具有全方位差异性的酒店氛围和
      经营体系，从而营造出一种无法模仿和复制的独特
      魅力与个性特征，实现提升酒店产品质量和品位的目的。</p>
     
     </div>
     
     
     </div>
     
     
     </div>

      <div class="l_div">
     <div class="header_list">
     <h3>主题酒店</h3>
     </div>
     <hr />

     <p>给你一个五星级的家</p>
     <div class="l_bq">
     <div class="bq" style="color: #a6ce39"><img alt="" src="image/icon-nav-shushi.png" />高端主题酒店</div>
     
     
     
     <div class="bq" style="color: #f15b47"><img alt="" src="image/icon-parent-child-type.png" />亲子房型</div>
     <div class="bq" style="color: #14b1e7"><img alt="" src="image/icon-theme-room-type.png" />主题房型</div>
     <div class="bq" style="color:#FF00FF"><img alt="" src="image/icon-wifi.png" />畅享无线</div>
     <div class="bq" style="color: #a6ce39"><img alt="" src="image/icon-buffet.png" />自助餐厅</div>
     <div class="bq" style="color: #005baa"><img alt="" src="image/icon-p.png" />停车场</div>
     </div>
     <div class="where_list">
        <p>酒店地址：英雄联盟区社会路108号</p>
        <p>联系电话：0000-0000000</p>
     
     </div>

     </div>
     </div>
     <a id="s2" class="a"></ a><a id="s1" class="a" href=" "></ a><a id="s3" class="a"
            href="#mid"></ a><a id="s4" class="a" href="#footer"></ a>

    </form>
</body>
</html>

