using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class dingdan_que : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string a = Session["ti"].ToString();
        string b = Session["tim"].ToString();

        string fjh = Request.QueryString["fh"].ToString();
        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase1.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "update 订单查询 set 是否结账 = true where 房间号= '" + fjh + "'";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        cmd.ExecuteNonQuery();
        
        cnn.Close();




        OleDbConnection cnn2;
        OleDbCommand cmd2;

        string str_sql2 = "update 房间详细 set 开始时间 = '" + a + "', 结束时间='" + b + "' where 房间号= '" + fjh + "'";
        cnn2 = new OleDbConnection(str_connection);
        cnn2.Open();
        cmd2 = new OleDbCommand(str_sql2, cnn2);
        cmd2.ExecuteNonQuery();
        int i = cmd2.ExecuteNonQuery();
        cnn2.Close();

        if (i > 0)
        {
            Response.Redirect("user_center.aspx");
        }
    }
}