<%@ Page Language="C#" AutoEventWireup="true" CodeFile="roomadd.aspx.cs" Inherits="roomadd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="lib/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
           body
   {
       width:1920px;
       height:100px;
       background-color:#FFE4E1;
   }
    #ListView1
    {
        text-align:center;
    }
    #ListView1 th 
    {
        width:200px;
        text-align:center;
    }
    #ListView1_itemPlaceholderContainer
    {
        text-align:center;
    }
    #ListView1_itemPlaceholderContainer tr th
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


<div style="margin:0 auto; margin-top:200px;">
<h1 style="width:100%; text-align:center;">    订房信息    </h1>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1"
            DataKeyNames="房间号">
 
           

          
            <ItemTemplate>
                <tr style="">
                   
                    <td>
                        <asp:Label ID="房间号Label" runat="server" Text='<%# Eval("房间号") %>' />
                    </td>
                    <td>
                        <asp:Label ID="客户名Label" runat="server" Text='<%# Eval("客户名") %>' />
                    </td>
                    <td>
                        <asp:Label ID="房间名Label" runat="server" Text='<%# Eval("房间名") %>' />
                    </td>
                    <td>
                        <asp:Label ID="身份证号Label" runat="server" Text='<%# Eval("身份证号") %>' />
                    </td>
                    <td>
                        <asp:Label ID="联系电话Label" runat="server" Text='<%# Eval("联系电话") %>' />
                    </td>
                    <td>
                        <asp:Label ID="订房开始时间Label" runat="server" Text='<%# Eval("订房开始时间") %>' />
                    </td>
                    <td>
                        <asp:Label ID="结束时间Label" runat="server" Text='<%# Eval("结束时间") %>' />
                    </td>
                    <td>
                        <asp:Label ID="价钱Label" runat="server" Text='<%# Eval("价钱") %>' />
                    </td>
                    <td>
                        <asp:Label ID="入住天数Label" runat="server" Text='<%# Eval("入住天数") %>' />
                    </td>
                    <td>
                        <asp:Label ID="房间系列Label" runat="server" Text='<%# Eval("房间系列") %>' />
                    </td>
                     <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" class="table">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" style="" class="table" width="60%">
                                <tr runat="server" style="">
                                    <th runat="server">
                                        房间号</th>
                                    <th runat="server">
                                        客户名</th>
                                    <th runat="server">
                                        房间名</th>
                                    <th runat="server">
                                        身份证号</th>
                                    <th runat="server">
                                        联系电话</th>
                                    <th runat="server">
                                        订房开始时间</th>
                                    <th runat="server">
                                        结束时间</th>
                                    <th runat="server">
                                        价钱</th>
                                    <th runat="server">
                                        入住天数</th>
                                    <th runat="server">
                                        房间系列</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                   
                    <td>
                        <asp:Label ID="房间号Label" runat="server" Text='<%# Eval("房间号") %>' />
                    </td>
                    <td>
                        <asp:Label ID="客户名Label" runat="server" Text='<%# Eval("客户名") %>' />
                    </td>
                    <td>
                        <asp:Label ID="房间名Label" runat="server" Text='<%# Eval("房间名") %>' />
                    </td>
                    <td>
                        <asp:Label ID="身份证号Label" runat="server" Text='<%# Eval("身份证号") %>' />
                    </td>
                    <td>
                        <asp:Label ID="联系电话Label" runat="server" Text='<%# Eval("联系电话") %>' />
                    </td>
                    <td>
                        <asp:Label ID="订房开始时间Label" runat="server" Text='<%# Eval("订房开始时间") %>' />
                    </td>
                    <td>
                        <asp:Label ID="结束时间Label" runat="server" Text='<%# Eval("结束时间") %>' />
                    </td>
                    <td>
                        <asp:Label ID="价钱Label" runat="server" Text='<%# Eval("价钱") %>' />
                    </td>
                    <td>
                        <asp:Label ID="入住天数Label" runat="server" Text='<%# Eval("入住天数") %>' />
                    </td>
                    <td>
                        <asp:Label ID="房间系列Label" runat="server" Text='<%# Eval("房间系列") %>' />
                    </td>
                     <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    </td>
                </tr>
            </SelectedItemTemplate>

        </asp:ListView>


        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            
            SelectCommand="SELECT [房间号], [客户名], [房间名], [身份证号], [联系电话], [订房开始时间], [结束时间], [价钱], [入住天数], [房间系列] FROM [订单查询]" 
            DeleteCommand="DELETE FROM [订单查询] WHERE [房间号] = ?" 
            InsertCommand="INSERT INTO [订单查询] ([房间号], [客户名], [房间名], [身份证号], [联系电话], [订房开始时间], [结束时间], [价钱], [入住天数], [房间系列]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
            UpdateCommand="UPDATE [订单查询] SET [客户名] = ?, [房间名] = ?, [身份证号] = ?, [联系电话] = ?, [订房开始时间] = ?, [结束时间] = ?, [价钱] = ?, [入住天数] = ?, [房间系列] = ? WHERE [房间号] = ?">
            <DeleteParameters>
                <asp:Parameter Name="房间号" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="房间号" Type="String" />
                <asp:Parameter Name="客户名" Type="String" />
                <asp:Parameter Name="房间名" Type="String" />
                <asp:Parameter Name="身份证号" Type="String" />
                <asp:Parameter Name="联系电话" Type="String" />
                <asp:Parameter Name="订房开始时间" Type="DateTime" />
                <asp:Parameter Name="结束时间" Type="DateTime" />
                <asp:Parameter Name="价钱" Type="Decimal" />
                <asp:Parameter Name="入住天数" Type="String" />
                <asp:Parameter Name="房间系列" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="客户名" Type="String" />
                <asp:Parameter Name="房间名" Type="String" />
                <asp:Parameter Name="身份证号" Type="String" />
                <asp:Parameter Name="联系电话" Type="String" />
                <asp:Parameter Name="订房开始时间" Type="DateTime" />
                <asp:Parameter Name="结束时间" Type="DateTime" />
                <asp:Parameter Name="价钱" Type="Decimal" />
                <asp:Parameter Name="入住天数" Type="String" />
                <asp:Parameter Name="房间系列" Type="String" />
                <asp:Parameter Name="房间号" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>


        </div>
    </div>
    </form>
</body>
</html>
