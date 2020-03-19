<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addroom.aspx.cs" Inherits="addroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>添加房间</title>
    <link href="css/template.css" rel="stylesheet" />
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-3.1.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://kit.fontawesome.com/2aeb52917d.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
            <header id="header" class="site-header">
                <nav id="navbar" class="site-navbar navbar navbar-static-top one-page-nav" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                                <i class="fa fa-bars"></i>
                            </button>
                            <h1 class="navbar-brand"><i class="fas fa-hotel"></i></i><a href="index.aspx">管理中心</a></h1>
                        </div>
                        <div class="collapse navbar-collapse" id="navbar-collapse-1">
                            <ul id="navigation" class="nav navbar-nav navbar-right">
                                <li class="active"><a href="index.aspx" class="current">主页</a></li>
                                <li><a href="#features">退出</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main id="main" class="site-main">
                <section id="pricing" class="section section-center section-pricing">
                    <div class="container">
                        <div class="pricing-table">
                            <div class="row">
                                <div class="col-md-3 col-sm-6" style="margin-left: 35%">
                                    <div class="panel panel-primary">
                                        <header class="panel-heading">
                                            <h1>添加客房</h1>
                                        </header>
                                        <div class="panel-body">
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>房号：<asp:TextBox ID="fanghao" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td>房名：<asp:TextBox ID="fangming" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>价格：<asp:TextBox ID="jiage" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>房间系列：<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1" DataTextField="系列名" DataValueField="xl_id" Width="150px"></asp:DropDownList>
                                                            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/mydatabase1.mdb" SelectCommand="SELECT * FROM [房间系列]"></asp:AccessDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>介绍：<asp:TextBox ID="jieshao" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                    <tr class="active">
                                                        <td>照片：<asp:TextBox ID="zhaopian" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <footer class="panel-footer">
                                            <asp:Button ID="Button1" runat="server" Text="添加" CssClass="btn btn-block btn-default" OnClick="Button1_Click" />
                                        </footer>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
    </form>
</body>
</html>
