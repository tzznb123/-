using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class roomadds : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = TextBox1.Text;
        string b = TextBox2.Text;
        string c = DropDownList1.SelectedValue.ToString();
        string d = TextBox4.Text;
        string e1 = TextBox5.Text;
        string cp = "<p>1.酒店主题客房1间1晚</br>2.免费使用高速无线网络</p>";
        string tu = "fj.jpg";


        int i = -1;
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase1.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);

        string sql = "insert into 房间详细(房间号,房间名,价格,早餐,xl_id,房间图,产品包括) values('" + a + "','" + b + "','" + d + "','" + e1 + "','" + c + "','" + tu + "','" + cp + "')";
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
            Response.Redirect("roomadds.aspx");
        }

        else if (i < 1)
        {
            Response.Write("<script>alert('添加出错了，请重试!')</script>");
            

        }
    }
}