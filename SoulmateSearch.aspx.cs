using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MatrimonyModel;

public partial class SoulmateSearch : System.Web.UI.Page
{
    MatrimonyEntities1 objEntity;

    protected void Page_Load(object sender, EventArgs e)
    {
        objEntity = new MatrimonyEntities1();

        if (!IsPostBack)
        {
            LoadReligionCombo();
            LoadCountryCombo();
            LoadHigherEduCombo();
            LoadMotherTongueCombo();
            LoadCasteCombo();
        }

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
        DDL_CasteSearch.Items.Insert(0, new ListItem("--Select Caste--", "0"));
    }

    protected void DDl_ReligionSearch_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadCasteCombo();

        Session["SessionReligion"] = DDl_ReligionSearch.SelectedIndex;
    
    }


    protected void LoadCountryCombo()
    {
        DDL_CountrySearch.DataSource = objEntity.Countries;
        DDL_CountrySearch.DataTextField = "CountryName";
        DDL_CountrySearch.DataValueField = "CountryID";
        DDL_CountrySearch.DataBind();
        DDL_CountrySearch.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void LoadHigherEduCombo()
    {
        DDL_EducationSearch.DataSource = objEntity.HighEducations;
        DDL_EducationSearch.DataTextField = "EducationName";
        DDL_EducationSearch.DataValueField = "EducationID";
        DDL_EducationSearch.DataBind();
        DDL_EducationSearch.Items.Insert(0, new ListItem("--Select--", "0"));
    }


    protected void Rbtn_Female_CheckedChanged(object sender, EventArgs e)
    {
        if (Rbtn_Female.Checked == true)
        {
            Session["sessionFemale"] = "F";
        }

    }
    protected void Rbtn_Male_CheckedChanged(object sender, EventArgs e)
    {
        if (Rbtn_Male.Checked == true)
        {
            Session["GenderMale"] = "M";
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
    protected void BTN_Search_Click(object sender, EventArgs e)
    {



        string[] strMaritalStat = (Convert.ToString(Session["MaritStatSearch"])).Split(',');
        string objFemale = Convert.ToString(Session["sessionFemale"]);
        string objMale = Convert.ToString(Session["GenderMale"]);
        int ObjReligionId = Convert.ToInt16(Session["SessionReligion"]);
        int[] arrintCountry = null;
        int[] arrintMontTon = null;
        int[] arrintedu = null;
        int[] arrintcaste = null;

        string strHiddenCountry = HiddenCountry.Value;
        string strHiddenMothTon = HiddenMothTongue.Value;
        string strHiddenEdu = HiddenEducation.Value;
        string strHiddencaste = HiddenCaste.Value;

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

        var query = (from m in objEntity.MatrimonyDetails//MatrimoneuDetails table
                     where (strMaritalStat.Contains((string)m.MaritalStatus)) &&
                     ((m.Gender == objFemale) || (m.Gender == objMale)) &&
                     (m.ReligionID == ObjReligionId) &&
                     (arrintCountry.Contains((int)m.CountryID)) &&
                     (arrintMontTon.Contains((int)m.MotherTomgueID)) &&
                     (arrintcaste.Contains((int)m.CasteID))
                     from v in objEntity.EduDetails//Education details table
                     where
                         (arrintedu.Contains((int)v.EducationID))
                     from c in objEntity.Castes
                     where//caste table
                         c.CasteID == m.CasteID
                     from f in objEntity.Countries
                     where//country table
                         f.CountryID == m.CountryID
                     from Mt in objEntity.MotherTongues
                     where//mothertongue table 
                         Mt.TongueID == m.MotherTomgueID
                     from Ed in objEntity.HighEducations
                     where//HigherEducation table
                         Ed.EducationID == v.EducationID



                     select new
                     {
                         m.Name,
                         v.HighEducation,
                         c.CasteName,
                         Mt.TongueName,


                     }).ToList();


        GridView1.DataSource = query;
        GridView1.DataBind();





    }
}