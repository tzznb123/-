using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.OleDb;

using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

public partial class dingfang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

           //TextBox1.Text = DateTime.Now.ToString("yyyy/M/d");
           //TextBox2.Text = DateTime.Now.AddDays(1).ToString("yyyy/M/d");
        
        

 
            ////DateTimeFormatInfo dtFormat = new System.Globalization.DateTimeFormatInfo();
            ////dtFormat.ShortDatePattern = "yyyy/MM/dd";
            ////TextBox1.Text = Convert.ToDateTime(time, dtFormat).ToShortDateString();

        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase1.mdb");
        string str_connection = str_conn + str_sourcefile;
            //OleDbConnection cnn;
            //OleDbCommand cmd;
            //string str_sql = "update 房间详细 set 添加时间前 = '" + DateTime.Now.ToString("yyyy/M/d") + "'";
            //cnn = new OleDbConnection(str_connection);
            //cnn.Open();
            //cmd = new OleDbCommand(str_sql, cnn);
            //cmd.ExecuteNonQuery();
            //int i = cmd.ExecuteNonQuery();
            //cnn.Close();

            //if (i > 0)
            //{
            OleDbConnection cnn1;
            OleDbCommand cmd1;
            OleDbDataReader datar;
            string str_sql1 = "update 房间详细 set 定= true where (添加时间前 > 结束时间)or(结束时间 is null)";
            cnn1 = new OleDbConnection(str_connection);
            cnn1.Open();
            cmd1 = new OleDbCommand(str_sql1, cnn1);
            cmd1.ExecuteNonQuery();
            int i1 = cmd1.ExecuteNonQuery();
            cnn1.Close();
            if (i1 > 0)
            {
                OleDbConnection cnn4;
                OleDbCommand cmd4;
                string str_sql4 = "update 房间详细 set 定= false where (结束时间 = 添加时间前) or (结束时间 > 添加时间前) ";
                cnn4 = new OleDbConnection(str_connection);
                cnn4.Open();
                cmd4 = new OleDbCommand(str_sql4, cnn4);
                cmd4.ExecuteNonQuery();
                cnn4.Close();
            //}

            //}

        }
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        //TextBox1.Text = TextBox1_CalendarExtender.SelectedDate.ToString();
        //var a = HiddenField1.Value;
        //var b = HiddenField2.Value;
        //Response.Write(a);
        Session["str_time"] = TextBox1.Text;
        Session["end_time"] = TextBox2.Text;

        string str_conn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/mydatabase1.mdb");
        string str_connection = str_conn + str_sourcefile;
        OleDbConnection cnn2;
        OleDbCommand cmd2;
        string str_sql2 = "update 房间详细 set 添加时间前 = '" + TextBox1.Text + "'";
        cnn2 = new OleDbConnection(str_connection);
        cnn2.Open();
        cmd2 = new OleDbCommand(str_sql2, cnn2);
        cmd2.ExecuteNonQuery();
        int i = cmd2.ExecuteNonQuery();
        cnn2.Close();

        if (i > 0)
        {
            OleDbConnection cnn3;
            OleDbCommand cmd3;
            OleDbDataReader datar;
            string str_sql3 = "update 房间详细 set 定= true where (添加时间前 > 结束时间)or(结束时间 is null)";
            cnn3 = new OleDbConnection(str_connection);
            cnn3.Open();
            cmd3 = new OleDbCommand(str_sql3, cnn3);
            cmd3.ExecuteNonQuery();
            int i3 = cmd3.ExecuteNonQuery();
            cnn3.Close();
            if (i3 > 0)
            {
                OleDbConnection cnn5;
                OleDbCommand cmd5;
                string str_sql5 = "update 房间详细 set 定= false where (结束时间 = 添加时间前) or (结束时间 > 添加时间前)";
                cnn5 = new OleDbConnection(str_connection);
                cnn5.Open();
                cmd5 = new OleDbCommand(str_sql5, cnn5);
                cmd5.ExecuteNonQuery();
                cnn5.Close();
                Response.Redirect("dingfang.aspx");
            }
        }

    }
}

