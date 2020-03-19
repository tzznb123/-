<%@ Page Language="C#" AutoEventWireup="true" CodeFile="测试2.aspx.cs" Inherits="测试2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="测试2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="newsContent">
    <a href="" class="i_button" style="width:80px; height:80px; float:right; margin-right:10px; text-align:center; line-height:80px;font-size:40px; text-decoration:none;">&times</a>
    
        <asp:ListView ID="ListView1" runat="server" 
         ItemPlaceholderID="n_holder" DataSourceID="AccessDataSource1">
            <LayoutTemplate>
                <div id="n_holder" runat="server"></div>
            </LayoutTemplate>

            <ItemTemplate>
                 <h1 id="NewsTTL" ><%#Eval("news_title") %></h1>
                 <p class ="tc">
                    <span id="NewsDate">日期: <%#Eval("news_date", "{0:d}")%></span>
                   
                 </p>

                 <div id="div_newsHoldr" class ="cke_show_borders">
                     <%#Eval("news_content")%>
                 </div>
            </ItemTemplate>

        </asp:ListView>


        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mydatabase1.mdb" 
            SelectCommand="SELECT * FROM [T_NEWS] WHERE ([news_id] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="news_id" 
                    QueryStringField="nid" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        

        
        

    </div>
    </form>
</body>
</html>
