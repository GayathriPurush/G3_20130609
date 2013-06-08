using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MatrimonyModel;
using System.Data;
using System.Data.SqlClient;

public partial class ShoppingCart : System.Web.UI.Page
{

    MatrimonyEntities1 ObjEntity;
    protected void Page_Load(object sender, EventArgs e)
    {




        ObjEntity = new MatrimonyEntities1();
        //string TxtCaste = Convert.ToString(Session["SessionCasteText"]);

        //listView.DataSource= ObjEntity.Castes;
        //listView.DataBind();

        SearchFunction();
        //var query = (from states in ObjEntity.StateDetails join city in ObjEntity.Cities on states.CountryID equals city.StateID select new { states
        //.StateID,states
        //.StateName,city
        //.CityID,city.CityName}).ToList();

        //GridView1.DataSource = Session["sessionSearch"];
        //GridView1.DataBind();


        //DataTable dt = new DataTable();
        //string sql = "SELECT OrderId,ImageUrl,NavigateUrl,AlternateText,IsAdActive FROM AdsDataTable";
        //SqlConnection con = new SqlConnection("Data Source=SEENU-PC\\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True");

        //SqlDataAdapter adsa = new SqlDataAdapter(sql, con);
        //adsa.Fill(dt);

        //listView.DataSource = Session["sessionSearch"];
        //listView.DataBind();



    }

    protected void SearchFunction()
    {
        string[] strMaritalStat = (Convert.ToString(Session["MaritStatSearch"])).Split(',');
        string objFemale = Convert.ToString(Session["sessionFemale"]);
        string objMale = Convert.ToString(Session["GenderMale"]);
        int ObjReligionId = Convert.ToInt16(Session["SessionReligion"]);




        int[] arrintCountry = null;
        int[] arrintMontTon = null;
        int[] arrintedu = null;
        int[] arrintcaste = null;

        string strHiddenCountry = Convert.ToString(Session["SessionHiddenCountry"]);
        string strHiddenMothTon = Convert.ToString(Session["SessionHiddenMothTon"]);
        string strHiddenEdu = Convert.ToString(Session["SessionHiddenEdu"]);
        string strHiddencaste = Convert.ToString(Session["SessionHiddencaste"]);

        if (strHiddenCountry != "")
        {
            arrintCountry = strHiddenCountry.Split(',').Select(str => int.Parse(str)).ToArray();
        }

        if (strHiddenMothTon != "")
        {
            arrintMontTon = strHiddenMothTon.Split(',').Select(str => int.Parse(str)).ToArray();
        }

        if (strHiddenEdu != "")
        {
            arrintedu = strHiddenEdu.Split(',').Select(str => int.Parse(str)).ToArray();
        }



        if (strHiddencaste != "")
        {
            arrintcaste = strHiddencaste.Split(',').Select(str => int.Parse(str)).ToArray();
        }
        var query = (from Objmatri in ObjEntity.MatrimonyDetails//MatrimoneuDetails table
                     where (strMaritalStat.Contains((string)Objmatri.MaritalStatus)) &&
                     ((Objmatri.Gender == objFemale) || (Objmatri.Gender == objMale)) &&
                     (Objmatri.ReligionID == ObjReligionId) &&
                     (arrintCountry.Contains((int)Objmatri.CountryID)) &&
                     (arrintMontTon.Contains((int)Objmatri.MotherTomgueID)) &&
                     (arrintcaste.Contains((int)Objmatri.CasteID))
                     from ObjEduDetails in ObjEntity.EduDetails//Education details table
                     where
                         (arrintedu.Contains((int)ObjEduDetails.EducationID))
                     from objcaste in ObjEntity.Castes
                     where//caste table
                         objcaste.CasteID == Objmatri.CasteID
                     from objcountry in ObjEntity.Countries
                     where//country table
                         objcountry.CountryID == Objmatri.CountryID
                     from ObjMothtongue in ObjEntity.MotherTongues
                     where//mothertongue table 
                         ObjMothtongue.TongueID == Objmatri.MotherTomgueID
                     from ObjEdu in ObjEntity.HighEducations
                     where//HigherEducation table
                         ObjEdu.EducationID == ObjEduDetails.EducationID
                     from objreligion in ObjEntity.Religions
                     where
                         objreligion.ReligionID == Objmatri.ReligionID
                     from objAstro in ObjEntity.AstrologicalInfoes
                     where
                         objAstro.MatrimonyID == Objmatri.MatrimonyID
                     from objOcc in ObjEntity.Occupations
                     where
                         objOcc.OccupID == ObjEduDetails.OccupID






                     select new
                     {
                         Objmatri.MatrimonyID,
                         Objmatri.ProfileFor,
                         Objmatri.Name,
                         objreligion.ReligionName,
                         ObjEdu.EducationName,
                         objcaste.CasteName,
                         Objmatri.SubcasteName,
                         objAstro.StarName,
                         objcountry.CountryName,
                         Objmatri.StateName,
                         Objmatri.CityName,
                         ObjEduDetails.HighEducation,
                         objOcc.OccupName,



                     }).ToList();

        //GridView1.DataSource = query;
        //GridView1.DataBind();

        listView.DataSource = query;
        listView.DataBind();

       

    }





    protected void listView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}


