using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace aggarwal
{
    public partial class jhome : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["cusloginn"] != null)
            {
                Label1.Text = Session["cusloginn"].ToString();
                Label1.Visible = true;
            }
        }
    }
}