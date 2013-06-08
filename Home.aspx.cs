using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Loginpage.aspx");
    }
    protected void Btn_Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("newuser2.aspx");
    }
}