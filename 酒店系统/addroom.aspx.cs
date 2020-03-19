using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addroom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = -1;
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("/mydatabase1.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);

        string sql = "insert into 房间详细(房间号,房间名,价格,xl_id,房间图,产品包括) values('" +fanghao.Text + "','" + fangming.Text + "','" + jiage.Text + "','" + DropDownList1.SelectedValue + "','" + zhaopian.Text + "','" + jieshao.Text + "')";
        cnn.Open();
        cmd = new OleDbCommand(sql, cnn);

        try { i = cmd.ExecuteNonQuery(); }

        catch (OleDbException)
        {

        }

        cnn.Close();
        if (i == 1)
        {
            Response.Write("<script>alert('添加成功成功!')</script>");
        }

        else if (i < 1)
        {
            Response.Write("<script>alert('添加出错了，请重试!')</script>");

        }
    }
}