<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>翰林书院--登录</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.png" />
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <div id="login">
        <h2>登录</h2>
        <form id="form2" runat="server">
            <div class="sign">
                <table style="margin: auto; border-spacing: 0px 15px;">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" placeholder="请输入账号" CssClass="input"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPwd"  runat="server" CssClass="input" TextMode="Password" placeholder="请输入密码"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnLongin" CssClass="btn" runat="server" Text="登录"  OnClick="btnLongin_Click" /></td>
                    </tr>
                    <tr>
                        <td><a href="register.aspx">还没有账号？立即注册</a></td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</body>
</html>
