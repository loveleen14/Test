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
    public partial class reg1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["onfs"].ConnectionString);
            con.Open();
            string query= "Insert into reg_table values(@name ,@password,@email,@mobileno ,@address )";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@password", txtpass.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@mobileno", txtmobile.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            

            int i = cmd.ExecuteNonQuery();
            txtname.Text = "";
            txtpass.Text = "";
            txtmobile.Text = "";
            txtemail.Text = "";
            txtaddress.Text = "";
            if(i>0)
            {
                Label1.Text = "data insert succesfully";
                //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('data insert succesfully')</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('data insert not  succesfully')</script>");
            }


        }
        
        }
    }
