using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MatrimonyModel;

public partial class WhosOnlineSearch : System.Web.UI.Page
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
        //int intReligionID;
        //bool blnCheck = int.TryParse(DDl_ReligionSearch.SelectedValue, out intReligionID);

        //var query = (from m in objEntity.Castes
        //             where m.ReligionID == intReligionID
        //             select m).ToList();

        //DDL_CasteSearch.DataSource = query;
        DDL_CasteSearch.DataSource = objEntity.Castes;
        DDL_CasteSearch.DataTextField = "CasteName";
        DDL_CasteSearch.DataValueField = "CasteID";
        DDL_CasteSearch.DataBind();
        DDL_CasteSearch.Items.Insert(0, new ListItem("--Select Caste--", "0"));
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
    }
    protected void Btn_Search_Click(object sender, EventArgs e)
    {






    }
}