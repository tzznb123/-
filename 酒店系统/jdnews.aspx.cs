using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jdnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {
        string a_URL;
        a_URL = "jdjs.aspx?nid=" + BulletedList1.Items[e.Index].Value;
        Response.Redirect(a_URL);
    }
}