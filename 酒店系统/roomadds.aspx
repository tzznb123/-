<%@ Page Language="C#" AutoEventWireup="true" CodeFile="roomadds.aspx.cs" Inherits="roomadds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .modal-body input
    {
        width:250px;
        height:40px;
        margin-left:100px;
        text-align:center;
    }
   body
   {
       width:1920px;
       height:1000px;
       background-color:	#FAF0E6;
   }
    .modal-body p
    {
        padding:20px;
        margin-left:40px;
    }
    #GridView1
    {
        margin:0 auto;
    }
    
    #GridView1 th
    {
        text-align:center;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">酒店管理页面</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="roomadds.aspx">添加房间<span class="sr-only">(current)</span></a></li>
        <li><a href="roomadd.aspx">查看订单</a></li>
        <li class="dropdown">
          <a href="HomePage.aspx">退出登陆</a>
        </li>
      </ul>
     
    </div>
  </div>
</nav>

<div style="margin-left:600px; margin-top:100px;">

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
 添加房间
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">房间添加</h4>
      </div>
      <div class="modal-body">
        <p>&nbsp;房间号&nbsp;：<asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></p>  
         <p> &nbsp;房间名&nbsp;：<asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox></p>
         <p> 房间系列：<asp:DropDownList ID="DropDownList1" runat="server" 
                 DataSourceID="AccessDataSource1" DataTextField="系列名" DataValueField="xl_id" class="form-control">
             </asp:DropDownList>
             <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                 DataFile="~/mydatabase1.mdb" SelectCommand="SELECT [xl_id], [系列名] FROM [房间系列]">
             </asp:AccessDataSource>
         </p>
          <p>&nbsp;价&nbsp;&nbsp;&nbsp;格&nbsp;&nbsp;：<asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox></p>
          <p>&nbsp;早&nbsp;&nbsp;&nbsp;餐&nbsp;&nbsp;：<asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <asp:Button ID="Button1" runat="server" Text="确认提交" class="btn btn-primary" 
        onclick="Button1_Click" />
        
      </div>
    </div>
  </div>
</div>
    
</div>
    </div>

    <div style="margin-left:600px; margin-top:100px; background-color:	#DCDCDC; width:700px; min-width:860px; min-height:340px; height:auto; text-align:center; padding: 40px 30px 40px 30px; border-radius:10px;">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  class="table" Width="800px"
            DataSourceID="AccessDataSource2">
            <Columns>
                <asp:BoundField DataField="系列名" HeaderText="系列名" SortExpression="系列名" />
                <asp:BoundField DataField="房间号" HeaderText="房间号" SortExpression="房间号" />
                <asp:BoundField DataField="房间名" HeaderText="房间名" SortExpression="房间名" />
                <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
                <asp:BoundField DataField="早餐" HeaderText="早餐" SortExpression="早餐" />
            </Columns>
        </asp:GridView>
    
    
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            SelectCommand="SELECT 房间系列.系列名, 房间详细.房间号, 房间详细.房间名, 房间详细.价格, 房间详细.早餐, 房间详细.产品包括 FROM (房间系列 INNER JOIN 房间详细 ON 房间系列.xl_id = 房间详细.xl_id)">
        </asp:AccessDataSource>
    
    
    </div>
    </form>
</body>
</html>
