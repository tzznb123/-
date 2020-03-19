using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void btnLongin_Click(object sender, EventArgs e)
    {
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/db/book.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);

        string username = txtName.Text;
        string psd = txtPwd.Text;
        string name = "";
        string mima = "";
        string reader = "";

        string sql = "select 读者编号,密码,读者类型 from 读者信息 where 读者编号='" + username + "'and 密码='" + psd + "'";

        cnn.Open();
        cmd = new OleDbCommand(sql, cnn);
        datar = cmd.ExecuteReader();

        while (datar.Read())
        {
            name = datar["读者编号"].ToString();
            mima = datar["密码"].ToString();
            reader = datar["读者类型"].ToString();
        }
        cnn.Close();

        if (name != "" && mima != "")
        {
            if (reader == "admin")
            {
                Session["user"] = name;
                Session["password"] = mima;
                Response.Redirect("admin.aspx");
            }
            else {
                Session["user"] = name;
                Session["password"] = mima;
                Response.Redirect("Reader.aspx");
                    }
            }

        else {
            Response.Write("<script>alert('用户名或密码错误，请重新登录')</script>");
        }
    }
}