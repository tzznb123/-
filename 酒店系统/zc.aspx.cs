using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class zc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLongin_Click(object sender, EventArgs e)
    {
        string zh = txtName.Text;
        string mima = txtPwd.Text;
        //if (zh == "" || mima == "")
        //{
        //    Response.Write("<script>alert('未输入账号')</script>");
        //}
        //if (zh == "admin" || mima == "123")
        //{
        //    Response.Redirect("roomadds.aspx");
        //}
        //else
        //{

            Session["number"] = zh;
            string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
            string str_sourcefile = MapPath("~/mydatabase1.mdb");
            string str_connection = str_conn + str_sourcefile;
            OleDbConnection cnn;
            OleDbCommand cmd;
            OleDbDataReader datar;
            string str_sql = "select  *  from  客户表 where 身份证号 ='" + zh + "'";
            cnn = new OleDbConnection(str_connection);
            cnn.Open();
            cmd = new OleDbCommand(str_sql, cnn);
            datar = cmd.ExecuteReader();
            datar.Read();

            string id_num = datar["身份证号"].ToString();
            string id_pwd = datar["密码"].ToString();
            cnn.Close();
            string vCode = Session["CheckCode"].ToString();
            if (TextBox5.Text.Trim().ToUpper() == vCode.ToUpper())
            {

                if (id_num == zh & id_pwd == mima)
                {

                    Response.Redirect("HomePage1.aspx");

                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误，请重新登录')</script>");
                }



            }


            else
            {
                Response.Write("<script>alert('验证码错误，请重新输入')</script>");
            }

        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string name = TextBox1.Text;
        string zh = TextBox2.Text;
        string mima = TextBox3.Text;
        string call = TextBox4.Text;
        if (name == "" || zh == "" || mima == "" || call == "")
        {
            Response.Write("<script>alert('请完善信息')</script>");
        }
        else
        {

            string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
            string str_sourcefile = MapPath("~/mydatabase1.mdb");
            string str_connection = str_conn + str_sourcefile;
            OleDbConnection cnn;
            OleDbCommand cmd;
            string str_sql = "insert into 客户表 (客户名,身份证号,联系电话,密码) values ('" + name + "','" + zh + "','" + call + "','" + mima + "')";
            cnn = new OleDbConnection(str_connection);
            cnn.Open();
            cmd = new OleDbCommand(str_sql, cnn);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('添加成功')</script>");
                Response.Redirect("zc.aspx");
            }
            else
            {
                Response.Write("添加失败");

                cnn.Close();

            }
        }
    }
}

