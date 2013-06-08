using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using MatrimonyModel;

public partial class Loginpage : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StrCon"].ConnectionString);

    MatrimonyEntities1 ObjEntity;

    protected void Page_Load(object sender, EventArgs e)
    {

        ObjEntity = new MatrimonyEntities1();


    }

    protected void Login_Click(object sender, EventArgs e)
    {

        var query = (from m in ObjEntity.MatrimonyDetails
                     where (m.Email == TxtBox_Email.Text  && m.LoginPwd == TxtBox_Pwd.Text)
                     select m).ToList();


        if (query.Count == 1)
        {
            Response.Redirect("Bannerads.aspx");

            //Response.Write("<script >alert('valid UserName or Password  Go to SignUP')</script>");
        }
        else
        {
            Response.Write("<script >alert('Invalid UserName or Password  Go to SignUP')</script>");
        }
    }
}



