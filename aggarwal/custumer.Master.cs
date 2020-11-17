using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aggarwal
{
    public partial class custumer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1, 5);
            Image1.ImageUrl = "~/img1/" + i.ToString() + ".jfif";
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("reg1.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}