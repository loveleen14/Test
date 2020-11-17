using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace aggarwal
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["onfs"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from reg_table where name=@name and  password=@password",con);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@password", txtpass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt!= null)
            {

                if(dt.Rows.Count >=0)
                {
                    Session["cusloginn"] = dt.Rows[0]["name"].ToString();
                    Session["custid"] = dt.Rows[0]["id"].ToString();
                    Response.Redirect("jhome.aspx");

                }
            }

        }
    }
}