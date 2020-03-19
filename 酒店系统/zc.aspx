<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zc.aspx.cs" Inherits="zc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="zd.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#dl .a").click(function () {
                $("#zc").fadeIn(200);
                
            });
            $("#zc #zc_1 .b").click(function () {
                $("#zc").fadeOut(200);
            });
        });
    </script>
    <script language="javascript" type="text/javascript">
        function f_refreshtype() {
            var Image1 = document.getElementById("img_code");
            if (Image1 != null) {
                Image1.src = Image1.src + "?";
            }
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#zc1 #Button1").click(function () {
                if ($("#TextBox1").val() == "") {
                    alter("请输入数据");
                    return false;
                }
                return true;
            });
        });
    
    
    
    </script>



</head>
<link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<body>
    <form id="target" runat="server">
    <div id="bod">

    <div id="dl">
    <h2 style="color:#8B7E66;">请登录</h2>
    <div class="d_l">

         <p>  <asp:TextBox ID="txtName" runat="server" placeholder="请输入账号" CssClass="input" class="form-control" required="required"  ></asp:TextBox></p> 
                   
           <p> <asp:TextBox ID="txtPwd"  runat="server" CssClass="input" TextMode="Password" placeholder="请输入密码" class="form-control"></asp:TextBox></p> 
           <h5>
               <asp:TextBox ID="TextBox5" runat="server" class="form-control"  ></asp:TextBox> <asp:Image ID="img_code" runat="server" src="VCode.aspx" onclick="f_refreshtype()" width="80px" /></h5>
                   
            <span><asp:Button ID="btnLongin" class="btn btn-info" runat="server" Text="Lgin"  OnClick="btnLongin_Click" type="submit" /></span> 
             <p><a class="a" href="#" style="font-size:20px; color:#614642;">还没有账号？立即注册</a></p>



    
    </div>
    </div>

    <div id="zc" >
    <div id="zc_1">
    <a class="b" href="#">&times;</a>

       <p style="margin-top:60px;"> 用户姓名：<asp:TextBox ID="TextBox1" runat="server" class="a"  name="fname" ></asp:TextBox>
       
          
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="请输入汉字！" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[\4e00-\u9fa5]$"></asp:RegularExpressionValidator>
       <br /></p>
        <p>身份证号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="请输入18位身份证号码！" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^\d{18}$"></asp:RegularExpressionValidator>
        <br /></p>
        <p>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="至少一位数值！" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="^\d{1,}$"></asp:RegularExpressionValidator>
        
            
        <br /></p>
        <p>电话号码：<asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><br /></p>




        <span><asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click"  class="btn btn-primary"/></span>




    </div>
    </div>

    </div>
    </form>
</body>
</html>
