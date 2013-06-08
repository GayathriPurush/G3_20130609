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
using System.Transactions;
using System.Globalization;



public partial class Second : System.Web.UI.Page
{

   MatrimonyEntities1 ObjEntity;
    private bool blnNoSubCaste, blnNoStateCity, blnNoGothra;


    protected void Page_Load(object sender, EventArgs e)
    {
        ObjEntity = new MatrimonyEntities1();

        string TxtCaste = Convert.ToString(Session["SessionCasteText"]);
        string TxtCountry = Convert.ToString(Session["SessionCountryText"]);
        Lbl_CountryName.Text = TxtCountry;
        Lbl_CasteName.Text = TxtCaste;
        string TxtReligion = Convert.ToString(Session["SessionReligion"]);
       

        //according to religion caste will be change to dropdown or textbox

        if (TxtReligion.ToString() == "1")
        {
            int intCasteID;
            bool blnCheck = int.TryParse(Session["SessionCaste"].ToString(), out intCasteID);


            var query = (from m in ObjEntity.SubCastes
                         where m.CasteID == intCasteID
                         select m).ToList().Count;
            if (query > 0)
            {
                Txt_SubCaste.Visible = false;
                DDL_SubCaste.Visible = true;
                blnNoSubCaste = false;
                if (!IsPostBack)
                {
                    LoadSubCasteCombo();
                }

            }
            else
            {
                Txt_SubCaste.Visible = true;
                DDL_SubCaste.Visible = false;
                blnNoSubCaste = true;

                blnNoGothra = true;
                Txt_Gothram.Visible = true;
                DDl_Gothra.Visible = false;
            }

        }
        else
        {
            Txt_SubCaste.Visible = true;
            DDL_SubCaste.Visible = false;
            blnNoSubCaste = true;

            blnNoGothra = true;
            Txt_Gothram.Visible = true;
            DDl_Gothra.Visible = false;
        }

        if (TxtCountry == "India")
        {
            DDL_State.Visible = true;
            DDL_City.Visible = true;
            TxtState.Visible = false;
            TxtCity.Visible = false;
        }
        else
        {
            DDL_State.Visible = false;
            DDL_City.Visible = false;
            TxtState.Visible = true;
            TxtCity.Visible = true;
            blnNoStateCity = true;
        }

        if (!IsPostBack)
        {
            LoadOccupCombo();
            LoadCurrencyCombo();
            LoadStateCombo();
            LoadHigherEduCombo();
            LoadStarCombo();
            //LoadSubCasteCombo();
        }
    }


    //Education
    protected void LoadHigherEduCombo()
    {
        DDL_HighestEdu.DataSource = ObjEntity.HighEducations;
        DDL_HighestEdu.DataTextField = "EducationName";
        DDL_HighestEdu.DataValueField = "EducationID";
        DDL_HighestEdu.DataBind();
        DDL_HighestEdu.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Occupation
    protected void LoadOccupCombo()
    {
        DDL_Occupation.DataSource = ObjEntity.Occupations;
        DDL_Occupation.DataTextField = "OccupName";
        DDL_Occupation.DataValueField = "OccupID";
        DDL_Occupation.DataBind();
        DDL_Occupation.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Gothra
    protected void LoadGothraCombo()
    {

        int intSubCasteID;
        bool blnCheck = int.TryParse(DDL_SubCaste.SelectedValue.ToString(), out intSubCasteID);

        var query = (from m in ObjEntity.Gothras
                     where m.SubCasteID == intSubCasteID
                     select m).ToList();

        DDL_City.DataSource = query;
        DDl_Gothra.DataTextField = "GothraName";
        DDl_Gothra.DataValueField = "GothraID";
        DDl_Gothra.DataBind();
        DDl_Gothra.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Currency
    protected void LoadCurrencyCombo()
    {
        DDL_IncomeType.DataSource = ObjEntity.Currencies;
        DDL_IncomeType.DataTextField = "CurrName";
        DDL_IncomeType.DataValueField = "CurrID";
        DDL_IncomeType.DataBind();
        DDL_IncomeType.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //State
    protected void LoadStateCombo()
    {
        DDL_State.DataSource = ObjEntity.StateDetails;

        DDL_State.DataTextField = "StateName";
        DDL_State.DataValueField = "StateID";
        DDL_State.DataBind();
        DDL_State.Items.Insert(0, new ListItem("--Select--", "0"));

    }



    //City
    protected void LoadCityCombo()
    {
        int intStateID;
        bool blnCheck = int.TryParse(DDL_State.SelectedIndex.ToString(), out intStateID);

        var query = (from m in ObjEntity.Cities
                     where m.StateID == intStateID
                     select m).ToList();

        DDL_City.DataSource = query;
        DDL_City.DataTextField = "CityName";
        DDL_City.DataValueField = "CityID";
        DDL_City.DataBind();
        DDL_City.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    ////SubCaste
    protected void LoadSubCasteCombo()
    {
        int intCasteID;
        bool blnCheck = int.TryParse(Session["SessionCaste"].ToString(), out intCasteID);

        var query = (from m in ObjEntity.SubCastes
                     where m.CasteID == intCasteID
                     select m).ToList();

        DDL_City.DataSource = query;
        DDL_SubCaste.DataTextField = "SubCasteName";
        DDL_SubCaste.DataValueField = "SubCasteID";
        DDL_SubCaste.DataBind();
        DDL_SubCaste.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    //Star
    protected void LoadStarCombo()
    {
        DDL_Star.DataSource = ObjEntity.StarDetails;
        DDL_Star.DataTextField = "StarName";
        DDL_Star.DataValueField = "StarID";
        DDL_Star.DataBind();
        DDL_Star.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DDL_Star_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadRasiCombo();
    }

    //Rassi
    protected void LoadRasiCombo()
    {

        int intstarID;
        bool blnCheck = int.TryParse(DDL_Star.SelectedIndex.ToString(), out intstarID);

        var query = (from m in ObjEntity.Raasis
                     where m.StarID == intstarID
                     select m).ToList();


        DDL_Moon.DataSource = query;
        DDL_Moon.DataTextField = "RaasiName";
        DDL_Moon.DataValueField = "RaasiID";
        DDL_Moon.DataBind();
        DDL_Moon.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        using (TransactionScope ts = new TransactionScope())
        {

            try
            {
                //using (DataContext contextObject = new DataContext(ConnectionString))
                //{
                // Open the contextObject connection state explicitly
                ObjEntity.Connection.Open();

                string hh = Session["SessionDOB"].ToString();

                //First SaveChange method.
                MatrimonyDetail objMatrim = new MatrimonyDetail();
                int? intldt = ObjEntity.MatrimonyDetails.Max(u => (int?)u.MatrimonyID);
                
                if (intldt == null)
                {
                    objMatrim.MatrimonyID = 1;
                }
                else
                {
                    int intldt2 = ObjEntity.MatrimonyDetails.Max(u => u.MatrimonyID);
                    objMatrim.MatrimonyID = intldt2 + 1;
                }



               
                objMatrim.ProfileFor = Convert.ToString(Session["ProfileFor"]);
                objMatrim.Name = Convert.ToString(Session["Sessionname"]);
                objMatrim.DOB = DateTime.Parse(hh);
                objMatrim.Gender = Convert.ToString(Session["SessionGender"]);
                objMatrim.CountryID = int.Parse(Session["SessionCountry"].ToString());
                objMatrim.MobileNo = Convert.ToString(Session["SessionMobile"]);

                if (blnNoStateCity)
                {
                    objMatrim.StateID = 999;
                    objMatrim.CityID = 999;
                    objMatrim.StateName = TxtState.Text.Trim();
                    objMatrim.CityName = TxtCity.Text.Trim();
                }
                else
                {
                    objMatrim.StateID = int.Parse(DDL_State.SelectedValue);
                    objMatrim.CityID = int.Parse(DDL_City.SelectedValue);
                    objMatrim.StateName = Convert.ToString(DDL_State.SelectedItem);
                    objMatrim.CityName = "";
                }


                objMatrim.ReligionID = int.Parse(Session["SessionReligion"].ToString());
                objMatrim.CasteID = int.Parse(Session["SessionCaste"].ToString());

                //objMatrim.SubCasteID = 4;
                //objMatrim.SubCasteID = int.Parse(DDL_SubCaste.SelectedValue);
                if (blnNoSubCaste)
                {
                    objMatrim.SubCasteID = 999;
                    objMatrim.SubcasteName = Txt_SubCaste.Text.Trim();

                }
                else
                {
                    objMatrim.SubCasteID = int.Parse(DDL_SubCaste.SelectedValue);
                    objMatrim.SubcasteName = "";
                }


                //objMatrim.GothraID = 1;
                if (blnNoSubCaste)
                {
                    objMatrim.GothraID = 999;
                    objMatrim.GothraName = Txt_Gothram.Text.Trim();

                }
                else
                {
                    objMatrim.GothraID = int.Parse(DDl_Gothra.SelectedValue);
                    objMatrim.GothraName = "";
                }



                objMatrim.Email = Convert.ToString(Session["SessionEmail"]);
                objMatrim.LoginPwd = Convert.ToString(Session["SessionPwd"]);

                string strMaritalStatus = "U";
                if (Rbtn_MartialStatus1.Checked == true)
                    strMaritalStatus = "U";
                else if (Rbtn_MartialStatus2.Checked == true)
                    strMaritalStatus = "W";
                else if (Rbtn_MartialStatus3.Checked == true)
                    strMaritalStatus = "D";
                else if (Rbtn_MartialStatus4.Checked == true)
                    strMaritalStatus = "A";

                objMatrim.MaritalStatus = strMaritalStatus;
                //objMatrim.TongueID = int.Parse(Session["SessionMotherTon"].ToString());

                //objMatrim.NoOfChild = DDL_NoOfChild.SelectedValue.ToString();
                objMatrim.NoOfChild = DDL_NoOfChild.SelectedValue.ToString();
                if (Rbtn_ChildLiving1.Checked == true)
                    objMatrim.LivingWith = "Y";
                else
                    objMatrim.LivingWith = "N";

                if (Rbtn_Caste1.Checked == true)
                    objMatrim.SameCommunity = "Y";
                else
                    objMatrim.SameCommunity = "N";

                objMatrim.DescriptionInfo = Txt_Desc.Text;
                objMatrim.ActiveInd = "N";
                objMatrim.CreatedDate = DateTime.Parse(System.DateTime.Now.ToString());
                objMatrim.UpdatedDate = DateTime.Parse(System.DateTime.Now.ToString());

                ObjEntity.AddToMatrimonyDetails(objMatrim);
                ObjEntity.SaveChanges();


                PhysicalAttr objphysical = new PhysicalAttr();
                objphysical.MatrimonyID = objMatrim.MatrimonyID;
                objphysical.HeightAttr = Convert.ToInt32(Txt_Height.Text);
                objphysical.WeightAttr = Convert.ToInt32(Txt_Weight.Text);

                string ObjBodytype = "A";

                if (Rbtn_BodyType1.Checked == true)
                    ObjBodytype = "A";
                else if (Rbtn_BodyType2.Checked == true)
                    ObjBodytype = "T";
                else if (Rbtn_BodyType3.Checked == true)
                    ObjBodytype = "S";
                else if (Rbtn_BodyType4.Checked == true)
                    ObjBodytype = "H";

                objphysical.BodyType = ObjBodytype;

                string strComplexion = "F";

                if (Rbtn_Complextion1.Checked == true)
                    strComplexion = "F";
                else if (Rbtn_Complextion2.Checked == true)
                    strComplexion = "V";
                else if (Rbtn_Complextion3.Checked == true)
                    strComplexion = "W";
                else if (Rbtn_Complextion4.Checked == true)
                    strComplexion = "B";
                else if (Rbtn_Complextion5.Checked == true)
                    strComplexion = "D";

                objphysical.Complexion = strComplexion;

                string strPhyStatus = "N";

                if (Rbtn_PhysicalStatus1.Checked == true)
                    strPhyStatus = "N";
                else if (Rbtn_PhysicalStatus2.Checked == true)
                    strPhyStatus = "P";

                objphysical.PhysicalStatus = strPhyStatus;

                ObjEntity.AddToPhysicalAttrs(objphysical);
                ObjEntity.SaveChanges();

                EduDetail ObjEduDetail = new EduDetail();

                ObjEduDetail.MatrimonyID = objMatrim.MatrimonyID;
                ObjEduDetail.EducationID = int.Parse(DDL_HighestEdu.SelectedValue);
                ObjEduDetail.OccupID = int.Parse(DDL_Occupation.SelectedValue);

                String strEmployedIn = "G";


                if (Rbtn_EmpIn1.Checked == true)
                    strEmployedIn = "G";
                else if (Rbtn_EmpIn2.Checked == true)
                    strEmployedIn = "P";
                else if (Rbtn_EmpIn3.Checked == true)
                    strEmployedIn = "B";
                else if (Rbtn_EmpIn4.Checked == true)
                    strEmployedIn = "S";
                else if (Rbtn_EmpIn5.Checked == true)
                    strEmployedIn = "D";

                ObjEduDetail.EmployedIn = strEmployedIn;

                string objIncometype = "M";


                if (Rbtn_IncomeType1.Checked == true)
                    objIncometype = "M";
                else if (Rbtn_IncomeType2.Checked == true)
                    objIncometype = "A";

                ObjEduDetail.IncomeType = objIncometype;
                ObjEduDetail.CurrID = int.Parse(DDL_IncomeType.SelectedValue);
                ObjEduDetail.Income = Convert.ToInt32(Txt_Amount.Text);

                ObjEntity.AddToEduDetails(ObjEduDetail);
                ObjEntity.SaveChanges();


                Habit objhabits = new Habit();

                objhabits.MatrimonyID = objMatrim.MatrimonyID;
                string ObjFoodtype = "Non-Vegetarian";


                if (Rbtn_FoodType1.Checked == true)
                    ObjFoodtype = "N";
                else if (Rbtn_FoodType2.Checked == true)
                    ObjFoodtype = "V";
                else if (Rbtn_FoodType3.Checked == true)
                    ObjFoodtype = "E";
                objhabits.Food = ObjFoodtype;

                string objSmoking = "No";

                if (Rbtn_Smoking1.Checked == true)
                    objSmoking = "N";
                else if (Rbtn_Smoking2.Checked == true)
                    objSmoking = "Y";
                else if (Rbtn_Smoking3.Checked == true)
                    objSmoking = "O";

                objhabits.Smoking = objSmoking;

                string objDrinking = "N";

                if (Rbtn_Drinking1.Checked == true)
                    objDrinking = "N";
                else if (Rbtn_Drinking2.Checked == true)
                    objDrinking = "Y";
                else if (Rbtn_Drinking3.Checked == true)
                    objDrinking = "O";

                objhabits.Drinking = objDrinking;

                ObjEntity.AddToHabits(objhabits);
                ObjEntity.SaveChanges();

                AstrologicalInfo objastrological = new AstrologicalInfo();

                objastrological.MatrimonyID = objMatrim.MatrimonyID;

                string objdosham = "N";
                if (Rbtn_Chevvai1.Checked == true)
                    objdosham = "N";
                else if (Rbtn_Chevvai2.Checked == true)
                    objdosham = "Y";
                else if (Rbtn_Chevvai3.Checked == true)
                    objdosham = "D";


                objastrological.Dosham = objdosham;

                objastrological.StarID = int.Parse(DDL_Star.SelectedValue);
                objastrological.RaasiID = int.Parse(DDL_Moon.SelectedValue);

                ObjEntity.AddToAstrologicalInfoes(objastrological);
                ObjEntity.SaveChanges();

                Family objfamily = new Family();
                objfamily.MatrimonyID = objMatrim.MatrimonyID;


                string ObjFamilystatus = "Middle Class";

                if (Rbtn_FamilyStatus1.Checked == true)
                    ObjFamilystatus = "M";
                else if (Rbtn_FamilyStatus2.Checked == true)
                    ObjFamilystatus = "U";
                else if (Rbtn_FamilyStatus3.Checked == true)
                    ObjFamilystatus = "R";
                else if (Rbtn_FamilyStatus4.Checked == true)
                    ObjFamilystatus = "A";

                objfamily.FamilyStatus = ObjFamilystatus;

                string ObjFamilyType = "S";

                if (Rbtn_FamilyType1.Checked == true)
                    ObjFamilystatus = "S";
                else if (Rbtn_FamilyType2.Checked == true)
                    ObjFamilystatus = "N";

                objfamily.FamilyType = ObjFamilyType;


                string ObjFamilyValue = "O";

                if (Rbtn_FamilyValue1.Checked == true)
                    ObjFamilyValue = "O";
                else if (Rbtn_FamilyValue2.Checked == true)
                    ObjFamilyValue = "T";
                else if (Rbtn_FamilyValue3.Checked == true)
                    ObjFamilyValue = "M";
                else if (Rbtn_FamilyValue4.Checked == true)
                    ObjFamilyValue = "L";

                objfamily.FamilyValues = ObjFamilyValue;

                ObjEntity.AddToFamilies(objfamily);
                ObjEntity.SaveChanges();

                ts.Complete();


                
            }
            catch (Exception ex)
            {
                // If any excption is caught, roll back the entire transaction and ends the                 transaction scope
                ts.Dispose();
            }
            finally
            {
                // Close the opened connection
                if (ObjEntity.Connection.State == ConnectionState.Open)
                {
                    ObjEntity.Connection.Close();
                    Response.Redirect("Home.aspx");
                }
            }
        }


    }


    protected void MaritalStatusChanged()
    {
        if (Rbtn_MartialStatus1.Checked == true)
        {
            Lbl_Child.Visible = false;
            DDL_NoOfChild.Visible = false;
            Rbtn_ChildLiving1.Visible = false;
            Rbt_childLiving2.Visible = false;
        }
        else if (Rbtn_MartialStatus2.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
            Rbt_childLiving2.Visible = true;
        }
        else if (Rbtn_MartialStatus3.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
            Rbt_childLiving2.Visible = true;
        }
        else if (Rbtn_MartialStatus4.Checked == true)
        {
            Lbl_Child.Visible = true;
            DDL_NoOfChild.Visible = true;
            Rbtn_ChildLiving1.Visible = true;
            Rbt_childLiving2.Visible = true;
        }
    }




    protected void DDL_State_SelectedIndexChanged(object sender, EventArgs e)
    {

        LoadCityCombo();

    }



   
    protected void DDL_HighestEdu_SelectedIndexChanged(object sender, EventArgs e)
    {
        int a = int.Parse(DDL_HighestEdu.SelectedValue);
    }
    protected void DDL_SubCaste_SelectedIndexChanged(object sender, EventArgs e)
    {
        int intSubCasteID;
        bool blnCheck = int.TryParse(DDL_SubCaste.SelectedValue.ToString(), out intSubCasteID);


        var query = (from m in ObjEntity.Gothras
                     where m.SubCasteID == intSubCasteID
                     select m).ToList().Count;
        if (query > 0)
        {
            LoadGothraCombo();
            Txt_Gothram.Visible = false;
            DDl_Gothra.Visible = true;
        }
        else
        {
            blnNoGothra = true;
            Txt_Gothram.Visible = true;
            DDl_Gothra.Visible = false;
        }




    }
    protected void Rbtn_MartialStatus3_CheckedChanged(object sender, EventArgs e)
    {
        MaritalStatusChanged();
    }
    protected void Rbtn_MartialStatus4_CheckedChanged(object sender, EventArgs e)
    {
         MaritalStatusChanged();
    
    }

    protected void Rbtn_MartialStatus1_CheckedChanged(object sender, EventArgs e)
    {
        MaritalStatusChanged();
    }
    protected void Rbtn_MartialStatus2_CheckedChanged(object sender, EventArgs e)
    {
        MaritalStatusChanged();
    }
}


