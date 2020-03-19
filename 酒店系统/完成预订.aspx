
<style type="text/css">
    #BB
    {
        width:1000px;
        height:645px;
        border:1px solid #F0FFF0; 
        margin-left:300px;    
        }
        .box
        {
             width:1000px;
             min-height:500px;
             margin-top:100px;
              
             
            }
        .ff
        {
            width:300px;
            height:375px;
            float:left;
            margin-left:20px;
              
             text-align:center;
                 background-color: #C1CDC1;
                 border-radius:40px;
                 margin-top:20px;
            }
            .rrr
           {
               margin-left:-10px;
              
               }
         .rrr a
         {
              text-decoration:none;
              color:#1E90FF;
              width:50px;
              height:20px;
             border:1px solid #D3D3D3;
             background-color:White;
             padding:5px;
                border-radius:7px;
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
                height:100px;
                background-color:#8B7D7B;
                margin-top:10px;
                
                
                }
                *
                {
                    position:relative;
                    }
</style>

  <div id="BB">
  <div class="box"> 
  <h1 style="text-align:center; color:Gray;">完成预定</h1>
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
     <p class="rrr"><a href="退房.aspx?fh=<%#Eval("房间号")%>" class="btn btn-block btn-default">申请退房</a></p>
     </div>
    </ItemTemplate>
    </asp:ListView>
      <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
          DataFile="~/news.mdb" SelectCommand="SELECT * FROM [订单查询]">
      </asp:AccessDataSource>
      </div>
</div>
<div class="clr" style="clear:both;"></div>
  
   <div class="gua">
     <p><a href="酒店预订.aspx" class="a1">房间预订</a></p>
     <p><a href="添加订单.aspx" class="a2">添加订单</a></p>
   <p><a href="订单结算.aspx" class="a3">订单结算</a></p>
   <p><a href="完成预订.aspx" class="a4">完成预订</a></p>
   </div> 
   <div class="clr" style="clear:both;"></div>
  
<div id="bottom">
<div class="bnm"><span class="sdf">关于我们</span><span>合作加盟</span><span>联系我们</span><span>社交媒体</span></div>

</div>


