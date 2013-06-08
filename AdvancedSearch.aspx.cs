using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MatrimonyModel;
using System.Linq.Expressions;




public partial class AdvancedSearch : System.Web.UI.Page
{
    MatrimonyEntities1 objEntity;




    protected void Page_Load(object sender, EventArgs e)
    {
        objEntity = new MatrimonyEntities1();
        //string abs;

        if (!IsPostBack)
        {
            LoadReligionCombo();
            LoadMotherTongueCombo();
            LoadCountryCombo();
            LoadStarCombo();
            LoadOccupCombo();
            LoadHigherEduCombo();
            LoadCasteCombo();

        }

        DDl_AnnIncomeTo.Visible = false;

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
        DDL_CountrySearch.Items.Insert(0, new ListItem("--Any--", "0"));


    }

    protected void LoadHigherEduCombo()
    {
        DDL_EduSearch.DataSource = objEntity.HighEducations;
        DDL_EduSearch.DataTextField = "EducationName";
        DDL_EduSearch.DataValueField = "EducationID";
        DDL_EduSearch.DataBind();

    }

    protected void LoadOccupCombo()
    {
        DDL_OccupationSearch.DataSource = objEntity.Occupations;
        DDL_OccupationSearch.DataTextField = "OccupName";
        DDL_OccupationSearch.DataValueField = "OccupID";
        DDL_OccupationSearch.DataBind();

    }


    protected void LoadStarCombo()
    {
        DDL_StarSearch.DataSource = objEntity.StarDetails;
        DDL_StarSearch.DataTextField = "StarName";
        DDL_StarSearch.DataValueField = "StarID";
        DDL_StarSearch.DataBind();
        DDL_StarSearch.Items.Insert(0, new ListItem("--Any--", "0"));

    }
    protected void DDL_AnnualIncomeFrom_SelectedIndexChanged(object sender, EventArgs e)
    {
        DDl_AnnIncomeTo.Visible = true;
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


    protected void Btn_SaveAndSearch_Click(object sender, EventArgs e)
    {

        int ObjReligionId = Convert.ToInt16(Session["SessionReligion"]);
        string objFemale = Convert.ToString(Session["sessionFemale"]);
        string objMale = Convert.ToString(Session["GenderMale"]);
        string objPhyNormal = Convert.ToString(Session["PhysicalNormal"]);
        string objPhyChallenger = (Convert.ToString(Session["Physicalchallenged"]));
        string[] strMaritalStat = (Convert.ToString(Session["MaritStatSearch"])).Split(',');
        string[] strEatingHabit = (Convert.ToString(Session["EatingHabit"])).Split(',');
        string[] strSmokingHabit = (Convert.ToString(Session["SmokingHabit"])).Split(',');
        string[] strDrinkingHabit = (Convert.ToString(Session["DrinkinhHabit"])).Split(',');
        int[] arrintCountry = null;
        int[] arrintMontTon = null;
        int[] arrintedu = null;
        int[] arrintOccupation = null;
        int[] arrintStar = null;

        string strHiddenCountry = HiddenCountry.Value;
        string strHiddenMothTon = HiddenMothTongue.Value;
        string strHiddenEdu = HiddenEducation.Value;
        string strHiddenOccupation = HiddenOccupation.Value;
        string strHiddenStar = HiddenStar.Value;

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

        if (strHiddenOccupation != "")
        {
            arrintOccupation = strHiddenOccupation.Split(',').Select(str => int.Parse(str)).ToArray();
        }

        if (strHiddenStar != "")
        {
            arrintStar = strHiddenStar.Split(',').Select(str => int.Parse(str)).ToArray();
        }
                
        var query = (from m in objEntity.MatrimonyDetails
                     where (strMaritalStat.Contains((string)m.MaritalStatus)) &&
                     ((m.Gender == objFemale) || (m.Gender == objMale)) &&
                     (m.ReligionID == ObjReligionId) &&
                         //(arrintCountry == null ? true : arrintCountry.Contains((int)m.CountryID)) &&
                     (arrintCountry.Contains((int)m.CountryID)) &&
                     (arrintMontTon.Contains((int)m.MotherTomgueID))
                     from v in objEntity.EduDetails
                     where
                         (arrintedu.Contains((int)v.EducationID)) &&
                         (arrintOccupation.Contains((int)v.OccupID))
                     from p in objEntity.PhysicalAttrs
                     where
                         (p.PhysicalStatus == objPhyChallenger || p.PhysicalStatus == objPhyNormal) &&
                         (p.MatrimonyID == m.MatrimonyID)
                     from s in objEntity.AstrologicalInfoes
                     where
                         (arrintStar.Contains((int)s.StarID))
                     from h in objEntity.Habits
                     where
                         ((strEatingHabit.Contains((string)h.Food)) &&
                         (strSmokingHabit.Contains((string)h.Smoking)) &&
                         (strDrinkingHabit.Contains((string)h.Drinking)))
                     from d in objEntity.HighEducations
                     where
                         d.EducationID == v.EducationID
                     from sa in objEntity.StarDetails
                     where
                         sa.StarID == s.StarID
                     from r in objEntity.Religions
                     where
                         r.ReligionID == m.ReligionID
                     from ma in objEntity.MotherTongues
                     where
                         ma.TongueID == m.MotherTomgueID

                     where m.MatrimonyID == v.MatrimonyID && m.MatrimonyID == s.MatrimonyID


                     select new
                     {
                         m.Name,
                         m.Gender,
                         m.MaritalStatus,
                         r.ReligionName,
                         d.EducationName,
                         sa.StarName,
                         ma.TongueName,
                         p.PhysicalStatus

                     }).ToList();

        GridView1.DataSource = query;
        GridView1.DataBind();

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
        if (CkBox_Unmarried.Checked == true)
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
            Session["MaritStatSearch"] += "M";
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






    protected void Rbtn_dntmatter_CheckedChanged(object sender, EventArgs e)
    {
        if (Rbtn_dntmatter.Checked == true)
        {
            Session["PhysicalNormal"] = "N";
            Session["Physicalchallenged"] = "P";
        }

    }
    protected void Rbtn_Normal_CheckedChanged(object sender, EventArgs e)
    {
        if (Rbtn_Normal.Checked == true)
        {
            Session["PhysicalNormal"] = "N";
            Session["Physicalchallenged"] = "";
        }

    }

    protected void Rbtn_PhysicalChallenge_CheckedChanged(object sender, EventArgs e)
    {
        if (Rbtn_PhysicalChallenge.Checked == true)
        {
            Session["Physicalchallenged"] = "P";
            Session["PhysicalNormal"] = "";
        }
    }

    private void SetEatinghabits()
    {
        Session["EatingHabit"] = null;
        if (CkBox_Eatinghabits1.Checked == true)
        {
            if (Session["EatingHabit"] != null)
            {
                Session["EatingHabit"] += ",";
            }
            Session["EatingHabit"] += "V,N,E";

        }

        else if (CkBox_Eatinghabits2.Checked == true)
        {

            if (Session["EatingHabit"] != null)
            {
                Session["EatingHabit"] += ",";
            }
            Session["EatingHabit"] += "V";
        }

        else if (CkBox_Eatinghabits3.Checked == true)
        {
            if (Session["EatingHabit"] != null)
            {
                Session["EatingHabit"] += ",";
            }
            Session["EatingHabit"] += "N";
        }

        else if (CkBox_Eatinghabits4.Checked == true)
        {

            if (Session["EatingHabit"] != null)
            {
                Session["EatingHabit"] += ",";
            }
            Session["EatingHabit"] += "E";
        }
    }
    protected void CkBox_Eatinghabits1_CheckedChanged(object sender, EventArgs e)
    {

        SetEatinghabits();

    }

    protected void CkBox_Eatinghabits2_CheckedChanged(object sender, EventArgs e)
    {
        SetEatinghabits();
    }

    protected void CkBox_Eatinghabits3_CheckedChanged(object sender, EventArgs e)
    {
        SetEatinghabits();
    }

    protected void CkBox_Eatinghabits4_CheckedChanged(object sender, EventArgs e)
    {
        SetEatinghabits();
    }


    private void SetDrinkinhHabit()
    {
        Session["DrinkinhHabit"] = null;
        if (CkBox_Drinking1.Checked == true)
        {

            if (Session["DrinkinhHabit"] != null)
            {
                Session["DrinkinhHabit"] += ",";
            }
            Session["DrinkinhHabit"] += "N,Y,O";
        }

        else if (CkBox_Drinking2.Checked == true)
        {
            if (Session["DrinkinhHabit"] != null)
            {
                Session["DrinkinhHabit"] += ",";
            }
            Session["DrinkinhHabit"] += "N";
        }
        else if (CkBox_Drinking3.Checked == true)
        {
            if (Session["DrinkinhHabit"] != null)
            {
                Session["DrinkinhHabit"] += ",";
            }
            Session["DrinkinhHabit"] += "O";
        }

        else if (CkBox_Drinking4.Checked == true)
        {
            if (Session["DrinkinhHabit"] != null)
            {
                Session["DrinkinhHabit"] += ",";
            }
            Session["DrinkinhHabit"] += "R";
        }
    }

    protected void CkBox_Drinking1_CheckedChanged1(object sender, EventArgs e)
    {
        SetDrinkinhHabit();
    }

    protected void CkBox_Drinking2_CheckedChanged(object sender, EventArgs e)
    {
        SetDrinkinhHabit();
    }

    protected void CkBox_Drinking3_CheckedChanged1(object sender, EventArgs e)
    {

        SetDrinkinhHabit();
    }
    protected void CkBox_Drinking4_CheckedChanged(object sender, EventArgs e)
    {
        SetDrinkinhHabit();
    }



    private void SetSmokingHabit()
    {
        Session["SmokingHabit"] = null;
        if (CkBox_Smoking1.Checked == true)
        {
            if (Session["SmokingHabit"] != null)
            {
                Session["SmokingHabit"] += ",";
            }
            Session["SmokingHabit"] += "N,Y,O";
        }

        else if (CkBox_Smoking2.Checked == true)
        {
            if (Session["SmokingHabit"] != null)
            {
                Session["SmokingHabit"] += ",";
            }
            Session["SmokingHabit"] += "N";
        }
        else if (CkBox_Smoking3.Checked == true)
        {
            if (Session["SmokingHabit"] != null)
            {
                Session["SmokingHabit"] += ",";
            }
            Session["SmokingHabit"] += "O";
        }

        else if (CkBox_Smoking4.Checked == true)
        {
            if (Session["SmokingHabit"] != null)
            {
                Session["SmokingHabit"] += ",";
            }
            Session["SmokingHabit"] += "Y";
        }
    }


    protected void CkBox_Smoking1_CheckedChanged(object sender, EventArgs e)
    {

        SetSmokingHabit();
    }

    protected void CkBox_Smoking2_CheckedChanged(object sender, EventArgs e)
    {
        SetSmokingHabit();
    }

    protected void CkBox_Smoking3_CheckedChanged(object sender, EventArgs e)
    {
        SetSmokingHabit();
    }

    protected void CkBox_Smoking4_CheckedChanged(object sender, EventArgs e)
    {
        SetSmokingHabit();
    }


}