using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

    public partial class user_center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["number"] == null)
            {
                Response.Write("<script>alert(\"您还未登录，请登录\");window.location.href=\"../zc.aspx\";</script>");
            }
        }

        
     }