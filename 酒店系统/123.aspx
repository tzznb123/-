<%@ Page Language="C#" AutoEventWireup="true" CodeFile="123.aspx.cs" Inherits="_123" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="header.css" rel="stylesheet" type="text/css" />
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".flip").click(function () {
            $(".panel").slideToggle("slow");
        });
    });
</script>

</head>
<body>
<form id="form1" runat="server" style="height="100px">



<div class="panel">

<div class="li_a">
<a>查看订单</a>
<a>查看预定房间</a>
<a>房间预定</a>
<a>用户中心</a>
<a>退出登陆</a>

</div>
</div>
 
<p class="flip glyphicon glyphicon-triangle-bottom"></p>

<div class="a">

28888

</div>
    </form>
</body>
</html>
