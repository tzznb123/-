<%@ Page Language="C#" AutoEventWireup="true" CodeFile="测试1.aspx.cs" Inherits="测试1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type ="text/javascript">
        $(document).ready(function () {
            $("#ddl_news").change(function () {
                var _nid = $(this).val();
                var _qs = "nid=" + _nid;
                $("#div_nHolder").load("测试2.aspx #newsContent", _qs).hide().show(300);
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
    <div id="r">

    <div class="dfg">
    <h2 style="color:#1E90FF;">点击查看新闻</h2>
        <asp:DropDownList ID="ddl_news" runat="server" DataSourceID="AccessDataSource1" 
            DataTextField="news_title" DataValueField="news_id">
        </asp:DropDownList>
    

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            SelectCommand="SELECT [news_id], [news_title] FROM [T_NEWS]">
        </asp:AccessDataSource>
    

        <div id="div_nHolder" style ="border:1px dotted silver;">
        
        </div>
    
    </div>
    </div>
    </form>
</body>
</html>
