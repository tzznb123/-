using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class dingdan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["number"] == null)
        {
            Response.Redirect("zc.aspx");
        }
        else
        {
            string user_id = Session["number"].ToString();
        }

        string fangjian_id = Request.QueryString["f_id"].ToString();
        string xl = Request.QueryString["f_xl"].ToString();

        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase1.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;


        string str_sql = "select  *  from  房间详细  where  房间号 = '" + fangjian_id + "' ";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        datar.Read();

        Label1.Text = datar["房间号"].ToString();
        Label2.Text = datar["房间名"].ToString();
        string  jg= datar["价格"].ToString();
      

        cnn.Close();
        Label4.Text = xl;
        if (Session["str_time"] == null)
        {
            Label5.Text = DateTime.Now.ToString("yyyy/M/d");
            Label6.Text = DateTime.Now.AddDays(1).ToString("yyyy/M/d");
        }
        else
        {
            Label5.Text = Session["str_time"].ToString();
            Label6.Text = Session["end_time"].ToString();
        }
        
        DateTime a = Convert.ToDateTime(Label5.Text);
        DateTime b = Convert.ToDateTime(Label6.Text);
        TimeSpan timed =b-a;

        int ts = Convert.ToInt32(timed.TotalDays);
        int price =Convert.ToInt32(jg);
        Label3.Text = (ts * price).ToString();
        Label7.Text = ts.ToString()+"天";
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fjh = Label1.Text;
        string fjm = Label2.Text;
        string price = Label3.Text;
        string xlhao = Label4.Text;
        string time_1 = Label5.Text;
        string time_2 = Label6.Text;
        string user_id = Session["number"].ToString();

        string img_id = "fj.jpg";
        string jieshao = "1.酒店主题客房1间1晚</br>2.免费使用高速无线网络";

        string ts = Label7.Text;




        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase1.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;
        string str_sql = "select  *  from  客户表  where  身份证号 = '" + user_id + "' ";
        cnn = new OleDbConnection(str_connection);
        cnn.Open();
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();
        datar.Read();


        string name_ = datar["客户名"].ToString();
        string call_1 = datar["联系电话"].ToString();

        cnn.Close();
        Response.Write(time_2);
        Response.Write(fjh);
        Response.Write(fjm);
        Response.Write(price);
        Response.Write(xlhao);
        Response.Write(time_1);
        Response.Write(user_id);
        Response.Write(name_);
        Response.Write(call_1);
        //string str_sql1 = "insert into 订单查询 (房间号,房间名,客户名,订房开始时间,结束时间,身份证号,联系电话,价钱,房间系列) values ('" + fjh + "','" + fjm + "','" + name_ + "','" + time_1 + "','" + time_2 + "','" + user_id + "','" + call_1 + "','" + price + "','" + xlhao + "')";
        OleDbConnection cnn1;
        OleDbCommand cmd1;
        string str_sql1 = "insert into 订单查询 (房间号,房间名,客户名,身份证号,联系电话,订房开始时间,结束时间,价钱,房间系列,房间图,产品包括,入住天数) values ('" + fjh + "','" + fjm + "','" + name_ + "','" + user_id + "','" + call_1 + "','" + time_1 + "','" + time_2 + "','" + price + "','" + xlhao + "','" + img_id + "','" + jieshao + "','" + ts + "')";
        try
        {


            cnn1 = new OleDbConnection(str_connection);
            cnn1.Open();
            cmd1 = new OleDbCommand(str_sql1, cnn1);
            cmd1.ExecuteNonQuery();
            int i = cmd1.ExecuteNonQuery();
            cnn1.Close();
            if (i < 1)
            {
                Response.Write("<script>alert('你已经预定过这个房间了')</script>");
            }
        }

        catch { }


        Session["ti"] = time_1;
        Session["tim"] = time_2;

        Response.Redirect("dingdan_g.aspx");
    }


}
