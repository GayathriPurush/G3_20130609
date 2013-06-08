using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MatrimonyModel;



public partial class EditProfile : System.Web.UI.Page
{
    MatrimonyEntities1 ObjEntity;
    protected void Page_Load(object sender, EventArgs e)
    {
        ObjEntity = new MatrimonyEntities1();

    }


    protected void LoadDesricption()
    {

    }


    protected void CreatePjt_Click(object sender, EventArgs e)
    {
        MatrimonyDetail objMatri = new MatrimonyDetail();
        //LblMailDesc.Text = Txt_Desc.Text;
        //objMatri.DescriptionInfo = Txt_Desc.Text;


    }


    protected void CloseBtn_Click(object sender, EventArgs e)
    {
        MatrimonyDetail objMatri = new MatrimonyDetail();
        LblMailDesc.Text = objMatri.DescriptionInfo;


    }
}