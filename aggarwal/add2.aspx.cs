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
    public partial class add2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["onfs"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            if(fuimg.HasFile)
            {
                string fileName = fuimg.FileName;
                fuimg.PostedFile.SaveAs(MapPath("~\\fileuploader\\") + fileName);
                Session["path"] = "~\\fileuploader\\";
                imgproduct.ImageUrl = Session["path"].ToString();
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<Script language='javascript'>alert('image uploaded successfully')</script>");

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<Script language='javascript'>alert('please select an image')</script>");

            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "Insert into product values(@p_img ,@p_name,@p_price)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@p_img", Session["path"].ToString());
            cmd.Parameters.AddWithValue("@p_name", txtproname.Text);
            cmd.Parameters.AddWithValue("@p_price", txtproprice.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<Script language='javascript'>alert('data inserted successfully')</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<Script language='javascript'>alert('data is not inserted successfully')</script>");
            }


        }
    }
}