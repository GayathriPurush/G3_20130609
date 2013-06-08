using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MatrimonyModel;


public partial class SearchCriteria : System.Web.UI.Page
{

    MatrimonyEntities1 objEntity;

    protected void Page_Load(object sender, EventArgs e)
    {
        objEntity = new MatrimonyEntities1();

        if (!IsPostBack)
        {
            LoadReligionCombo();
            LoadMotherTongueCombo();
            
            LoadCountryCombo();
            LoadHigherEduCombo();
        }

        DDL_CasteSearch.Items.Insert(0, new ListItem("--Select Caste--", "0"));
    }



    protected void LoadReligionCombo()
    {
        DDl_ReligionSearch.DataSource = objEntity.Religions;
        DDl_ReligionSearch.DataTextField = "ReligionName";
        DDl_ReligionSearch.DataValueField = "ReligionId";
        DDl_ReligionSearch.DataBind();
        DDl_ReligionSearch.Items.Insert(0, new ListItem("--Any--", "0"));
    }

    //Mother Tongue
    protected void LoadMotherTongueCombo()
    {
        DDL_MothTongueSearch.DataSource = objEntity.MotherTongues;
        DDL_MothTongueSearch.DataTextField = "TongueName";
        DDL_MothTongueSearch.DataValueField = "TongueID";
        DDL_MothTongueSearch.DataBind();
        DDL_MothTongueSearch.Items.Insert(0, new ListItem("--Any--", "0"));
    }

    protected void LoadCasteCombo()
    {
        int intReligionID;
        bool blnCheck = int.TryParse(DDl_ReligionSearch.SelectedValue, out intReligionID);

        if (intReligionID == 0)
        {
            DDL_CasteSearch.DataSource = objEntity.Castes;
        }
        else
        {
            var query = (from m in objEntity.Castes
                         where m.ReligionID == intReligionID
                         select m).ToList();

            DDL_CasteSearch.DataSource = query;
        }

        DDL_CasteSearch.DataTextField = "CasteName";
        DDL_CasteSearch.DataValueField = "CasteID";
        DDL_CasteSearch.DataBind();
        DDL_CasteSearch.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Country
    protected void LoadCountryCombo()
    {
        DDL_CountrySearch.DataSource = objEntity.Countries;
        DDL_CountrySearch.DataTextField = "CountryName";
        DDL_CountrySearch.DataValueField = "CountryID";
        DDL_CountrySearch.DataBind();
        DDL_CountrySearch.Items.Insert(0, new ListItem("--Select Country--", "0"));
    }


    //Education
    protected void LoadHigherEduCombo()
    {
        DDL_EducationSearch.DataSource = objEntity.HighEducations;
        DDL_EducationSearch.DataTextField = "EducationName";
        DDL_EducationSearch.DataValueField = "EducationID";
        DDL_EducationSearch.DataBind();
        DDL_EducationSearch.Items.Insert(0, new ListItem("--Select--", "0"));
    }


    protected void DDl_ReligionSearch_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadCasteCombo();

        Session["SessionReligion"] = DDl_ReligionSearch.SelectedIndex;
    }
    protected void Btn_Search_Click(object sender, EventArgs e)
    {
        //string[] strMaritalStat = (Convert.ToString(Session["MaritStatSearch"])).Split(',');
        //string objFemale = Convert.ToString(Session["sessionFemale"]);
        //string objMale = Convert.ToString(Session["GenderMale"]);
        //int ObjReligionId = Convert.ToInt16(Session["SessionReligion"]);
        
        
        Session["SessionHiddenCountry"] = HiddenCountry.Value;
        Session["SessionHiddenMothTon"] = HiddenMothTongue.Value;
        Session["SessionHiddenEdu"] = HiddenEducation.Value;
        Session["SessionHiddencaste"] = HiddenCaste.Value;

       

        //var query = (from Objmatri in objEntity.MatrimonyDetails//MatrimoneuDetails table
        //             where (strMaritalStat.Contains((string)Objmatri.MaritalStatus)) &&
        //             ((Objmatri.Gender == objFemale) || (Objmatri.Gender == objMale)) &&
        //             (Objmatri.ReligionID == ObjReligionId) &&
        //             (arrintCountry.Contains((int)Objmatri.CountryID)) &&
        //             (arrintMontTon.Contains((int)Objmatri.MotherTomgueID)) &&
        //             (arrintcaste.Contains((int)Objmatri.CasteID))
        //             from ObjEduDetails in objEntity.EduDetails//Education details table
        //             where
        //                 (arrintedu.Contains((int)ObjEduDetails.EducationID))
        //             from objcaste in objEntity.Castes
        //             where//caste table
        //                 objcaste.CasteID == Objmatri.CasteID
        //             from objcountry in objEntity.Countries
        //             where//country table
        //                 objcountry.CountryID == Objmatri.CountryID
        //             from ObjMothtongue in objEntity.MotherTongues
        //             where//mothertongue table 
        //                 ObjMothtongue.TongueID == Objmatri.MotherTomgueID
        //             from ObjEdu in objEntity.HighEducations
        //             where//HigherEducation table
        //                 ObjEdu.EducationID == ObjEduDetails.EducationID
        //             from objreligion in objEntity.Religions
        //             where
        //                 objreligion.ReligionID == Objmatri.ReligionID
        //             from objAstro in objEntity.AstrologicalInfoes
        //             where
        //                 objAstro.MatrimonyID == Objmatri.MatrimonyID
        //             from objOcc in objEntity.Occupations
        //             where
        //                 objOcc.OccupID == ObjEduDetails.OccupID






        //             select new
        //             {
        //                 Objmatri.ProfileFor,
        //                 Objmatri.Name,
        //                 objreligion.ReligionName,
        //                 ObjEdu.EducationName,
        //                 objcaste.CasteName,
        //                 Objmatri.SubcasteName,
        //                 objAstro.StarName,
        //                 objcountry.CountryName,
        //                 Objmatri.StateName,
        //                 Objmatri.CityName,
        //                 ObjEduDetails.HighEducation,
        //                 objOcc.OccupName,



        //             }).ToList();




        //Session["sessionSearch"] = query;
        Response.Redirect("ShoppingCart.aspx");
        //GridView1.DataSource = query;
        //GridView1.DataBind();


        
    }
    protected void Rbtn_Male_CheckedChanged(object sender, EventArgs e)
    {
        if (Rbtn_Male.Checked == true)
        {
            Session["GenderMale"] = "M";
        }
    }
    protected void Rbtn_Female_CheckedChanged(object sender, EventArgs e)
    {
        if (Rbtn_Female.Checked == true)
        {
            Session["sessionFemale"] = "F";
        }
    }
    protected void CkBox_Any_CheckedChanged(object sender, EventArgs e)
    {
        SetMaritalStatus();
    }
    protected void CkBox_Unmarried_CheckedChanged(object sender, EventArgs e)
    {
        SetMaritalStatus();
    }
    protected void CkBox_Widow_CheckedChanged(object sender, EventArgs e)
    {
        SetMaritalStatus();
    }
    protected void CkBox_Divorced_CheckedChanged(object sender, EventArgs e)
    {
        SetMaritalStatus();
    }
    protected void CkBox_Awaiting_CheckedChanged(object sender, EventArgs e)
    {
        SetMaritalStatus();
    }

    private void SetMaritalStatus()
    {
        Session["MaritStatSearch"] = null;
        if (CkBox_Any.Checked == true)
        {
            if (Session["MaritStatSearch"] != null)
            {
                Session["MaritStatSearch"] += ",";
            }
            Session["MaritStatSearch"] += "U,D,W,A";
        }

        else if (CkBox_Unmarried.Checked == true)
        {
            if (Session["MaritStatSearch"] != null)
            {
                Session["MaritStatSearch"] += ",";
            }
            Session["MaritStatSearch"] += "U";
        }

        else if (CkBox_Widow.Checked == true)
        {
            if (Session["MaritStatSearch"] != null)
            {
                Session["MaritStatSearch"] += ",";
            }
            Session["MaritStatSearch"] += "W";
        }

        else if (CkBox_Divorced.Checked == true)
        {
            if (Session["MaritStatSearch"] != null)
            {
                Session["MaritStatSearch"] += ",";
            }
            Session["MaritStatSearch"] += "D";
        }


        else if (CkBox_Awaiting.Checked == true)
        {
            if (Session["MaritStatSearch"] != null)
            {
                Session["MaritStatSearch"] += ",";
            }
            Session["MaritStatSearch"] += "A";
        }
    }
}