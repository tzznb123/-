using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class tf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Session["number"].ToString();
        string fh = Request.QueryString["fh"].ToString();


        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase1.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql = "delete from 订单查询  where 身份证号 = '" + name + "' and 房间号= '" + fh + "'";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        cmd.ExecuteNonQuery();

        cnn.Close();





        OleDbConnection cnn1;
        OleDbCommand cmd1;
        string str_sql1 = "update 房间详细 set 开始时间 = null,结束时间 = null where 房间号= '" + fh + "'";
        cnn1 = new OleDbConnection(str_connection);
        cnn1.Open();
        cmd1 = new OleDbCommand(str_sql1, cnn1);
        cmd1.ExecuteNonQuery();
        int i = cmd1.ExecuteNonQuery();
        cnn1.Close();
        if (i > 0)
        {
            Response.Redirect("user_center.aspx");
        }
    }
}