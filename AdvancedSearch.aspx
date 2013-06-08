<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvancedSearch.aspx.cs" Inherits="AdvancedSearch" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <link href="chosen-master/chosen/chosen.css" rel="stylesheet" type="text/css" />
    <script src="chosen-master/chosen/chosen.jquery.min.js" type="text/javascript"></script>
    <%--<link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <script src="jquery.min.js" type="text/javascript"></script>--%>
    <style type="text/css">
        .pnlCSS
        {
            font-weight: bold;
            cursor: pointer;
            border: solid 1px #c0c0c0;
            width: 70%;
        }
    </style>
    <script type="text/javascript">
        //        $(function()
        //        {
        //            $("#DDL_CasteSearch").accordion();
        //        });

        //        var prm = Sys.WebForms.PageRequestManager.getInstance();
        //        if (prm != null) {
        //            prm.add_endRequest(function (sender, e) {
        //                if (sender._postBackSettings.panelsToUpdate != null) {
        //                    $("#DDL_CasteSearch").accordion();
        //                   
        //                }
        //            });
        //        };

        if (!Array.prototype.indexOf) {
            Array.prototype.indexOf = function (searchElement /*, fromIndex */) {
                "use strict";

                if (this === void 0 || this === null) throw new TypeError();

                var t = Object(this);
                var len = t.length >>> 0;
                if (len === 0) return -1;

                var n = 0;
                if (arguments.length > 0) {
                    n = Number(arguments[1]);
                    if (n !== n) // shortcut for verifying if it's NaN
                        n = 0;
                    else if (n !== 0 && n !== (1 / 0) && n !== -(1 / 0)) n = (n > 0 || -1) * Math.floor(Math.abs(n));
                }

                if (n >= len) return -1;

                var k = n >= 0 ? n : Math.max(len - Math.abs(n), 0);

                for (; k < len; k++) {
                    if (k in t && t[k] === searchElement) return k;
                }
                return -1;
            };
        }

        jQuery(document).ready(function () {
            jQuery(".chzn-select").chosen();

            $('#DDL_MothTongueSearch').chosen();
            $('#DDL_MothTongueSearch').chosen().change(function () {
                var MothTonguevalue = $('#DDL_MothTongueSearch').val();
                $('#<%= HiddenMothTongue.ClientID %>').val(MothTonguevalue);
            });

            $('#DDL_CountrySearch').chosen();
            $('#DDL_CountrySearch').chosen().change(function () {
                var Countryvalue = $('#DDL_CountrySearch').val();

                $('#<%= HiddenCountry.ClientID %>').val(Countryvalue);

                //                if (Countryvalue.indexOf('0') > -1) {
                //                    //$(this).find('option:contains("--Any--")').remove();
                //                    //alert(Countryvalue);
                //                    if (Countryvalue.length > 1) {
                //                        Countryvalue.splice(0, 1);
                //                        $("#DDL_CountrySearch").val(Countryvalue).trigger("liszt:updated");
                //                    }
                //                }

            });


            $('#DDL_EduSearch').chosen();
            $('#DDL_EduSearch').chosen().change(function () {
                var Educationvalue = $('#DDL_EduSearch').val();
                $('#<%= HiddenEducation.ClientID %>').val(Educationvalue);
            });


            $('#DDL_OccupationSearch').chosen();
            $('#DDL_OccupationSearch').chosen().change(function () {
                var Occupationvalue = $('#DDL_OccupationSearch').val();
                $('#<%= HiddenOccupation.ClientID %>').val(Occupationvalue);
            });


            $('#DDL_StarSearch').chosen();
            $('#DDL_StarSearch').chosen().change(function () {
                var StarValue = $('#DDL_StarSearch').val();
                $('#<%= HiddenStar.ClientID %>').val(StarValue);
            });


        }); 
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 210px;
        }
        .style3
        {
            width: 165px;
        }
        .style4
        {
            width: 166px;
        }
        .style5
        {
            width: 169px;
        }
        .style6
        {
            width: 175px;
        }
        .style7
        {
            width: 210px;
            text-align: left;
        }
        .style8
        {
            color: #003366;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="LblHeading" runat="server" Text="Advanced search Criteria" Font-Bold="True"
                        Font-Size="Large"></asp:Label>
                    <br />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_Gender" runat="server" Text="Gender" CssClass="style8"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RadioButton ID="Rbtn_Female" runat="server" GroupName="GenderSelection" Text="Female"
                        OnCheckedChanged="Rbtn_Female_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Rbtn_Male" runat="server" GroupName="GenderSelection" Text="Male"
                        OnCheckedChanged="Rbtn_Male_CheckedChanged" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_Age" runat="server" Text="Age" CssClass="style8"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="TxtBox_AgeFrom" runat="server" Width="77px"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="Lbl_To" runat="server" Text="To"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TxtBox_AgeTo" runat="server" Width="77px"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="Lbl_Year" runat="server" Text="Years"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_Height" runat="server" Text="Height" CssClass="style8"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:DropDownList ID="DDL_FromHeight" SelectionMode="Multiple" Width="127px" data-placeholder="Choose a programming language..."
                        class="chzn-select" runat="server" Height="22px">
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Label ID="Lbl_ToHeight" runat="server" Text="To"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_ToHeight" runat="server" Height="22px" Width="127px">
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_MartialStatus" runat="server" Text="Martial Status" CssClass="style8"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:CheckBox ID="CkBox_Any" runat="server" Text="Any" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Unmarried" runat="server" Text="UnMarried" OnCheckedChanged="CkBox_Unmarried_CheckedChanged" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Widow" runat="server" Text="Widow" OnCheckedChanged="CkBox_Widow_CheckedChanged" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Divorced" runat="server" Text="Divorced" OnCheckedChanged="CkBox_Divorced_CheckedChanged" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Awaiting" runat="server" Text="Awaiting Divorce" OnCheckedChanged="CkBox_Awaiting_CheckedChanged" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_Religion" runat="server" Text="Religion" CssClass="style8"></asp:Label>
                </td>
                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
                </asp:ScriptManager>
                <td>
                    <br />
                    <asp:ListBox ID="DDl_ReligionSearch" runat="server" Width="300" data-placeholder="Select..."
                        class="chzn-select" AutoPostBack="True" OnSelectedIndexChanged="DDl_ReligionSearch_SelectedIndexChanged">
                    </asp:ListBox>
                    <br />
                    <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                               
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="DDl_ReligionSearch" 
                                        EventName="SelectedIndexChanged" />
                                </Triggers>
                            </asp:UpdatePanel>--%>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_MotherTong" runat="server" Text="Mother Tongue" CssClass="style8"></asp:Label>
                </td>
                <td>
                    <asp:ListBox ID="DDL_MothTongueSearch" runat="server" SelectionMode="Multiple" Width="300"
                        data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_Caste" runat="server" Text="Caste" CssClass="style8"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:ListBox ID="DDL_CasteSearch" runat="server" SelectionMode="Multiple" Width="300"
                                data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DDl_ReligionSearch" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <%--<asp:ListBox ID="DDL_CasteSearch" runat="server" SelectionMode="Multiple" Width="300"
                            data-placeholder="Select..." class="chzn-select"></asp:ListBox>--%>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <br class="style8" />
                    <asp:Label ID="Lbl_PhysicalStatus" runat="server" Text="Physical Status" CssClass="style8"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RadioButton ID="Rbtn_dntmatter" GroupName="Physical Status" runat="server" Text="Doesn't Matter"
                        OnCheckedChanged="Rbtn_dntmatter_CheckedChanged" />
                    &nbsp;
                    <asp:RadioButton ID="Rbtn_Normal" GroupName="Physical Status" runat="server" Text="Normal"
                        OnCheckedChanged="Rbtn_Normal_CheckedChanged" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="Rbtn_PhysicalChallenge" runat="server" GroupName="Physical Status"
                        Text="Physically Challenged" OnCheckedChanged="Rbtn_PhysicalChallenge_CheckedChanged" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:Panel ID="pnlClick" runat="server" CssClass="pnlCSS">
            <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                <div style="float: left; color: Black; padding: 5px 5px 0 0">
                    Location
                </div>
                <div style="float: right; color: Black; padding: 10px 10px 0 0">
                    <asp:Image ID="imgArrows" runat="server" />
                </div>
                <div style="clear: both">
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlCollapsable" runat="server" Height="10" CssClass="pnlCSS">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <br />
                        <asp:Label ID="Lbl_Country" runat="server" Text="Country" ToolTip="Country"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:ListBox ID="DDL_CountrySearch" runat="server" SelectionMode="Multiple" Width="300"
                            data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="pnlClick"
            Collapsed="true" ExpandControlID="pnlClick" ImageControlID="imgArrows" CollapsedImage="~/Images/downarrow.jpg"
            ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="pnlCollapsable"
            ScrollContents="false">
        </ajax:CollapsiblePanelExtender>
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server" CssClass="pnlCSS">
            <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                <div style="float: left; color: Black; padding: 5px 5px 0 0">
                    Education/Occupation
                </div>
                <div style="float: right; color: Black; padding: 10px 10px 0 0">
                    <asp:Image ID="Image1" runat="server" />
                </div>
                <div style="clear: both">
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="10" CssClass="pnlCSS">
            <table class="style1">
                <tr>
                    <td class="style4">
                        <br />
                        <asp:Label ID="Lbl_Education" runat="server" Text="Education"></asp:Label>
                    </td>
                    <td>
                        <asp:ListBox ID="DDL_EduSearch" runat="server" SelectionMode="Multiple" Width="300"
                            data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <br />
                        <asp:Label ID="Lbl_Occupation" runat="server" Text="Occupation"></asp:Label>
                    </td>
                    <td>
                        <asp:ListBox ID="DDL_OccupationSearch" runat="server" SelectionMode="Multiple" Width="300"
                            data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <br />
                        <asp:Label ID="Lbl_AnnIncome" runat="server" Text="Annual Income"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>--%>&nbsp;&nbsp; &nbsp;
                        <asp:DropDownList ID="DDL_AnnualIncomeFrom" runat="server" Height="20px" Width="126px"
                            AutoPostBack="True" OnSelectedIndexChanged="DDL_AnnualIncomeFrom_SelectedIndexChanged">
                            <asp:ListItem Value="0">Any</asp:ListItem>
                            <asp:ListItem Value="1">Less Then 500 thousand</asp:ListItem>
                            <asp:ListItem Value="2">Rs 50 thousand</asp:ListItem>
                            <asp:ListItem Value="2">Rs 1Lakh</asp:ListItem>
                            <asp:ListItem Value="3">Rs 2Lakh</asp:ListItem>
                            <asp:ListItem Value="4">Rs 3Lakh</asp:ListItem>
                            <asp:ListItem Value="5">Rs 4Lakh</asp:ListItem>
                        </asp:DropDownList>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DDl_AnnIncomeTo" runat="server" Width="144px">
                                    <asp:ListItem>Any</asp:ListItem>
                                    <asp:ListItem>Rs 50 thousand</asp:ListItem>
                                    <asp:ListItem>Rs 1Lakh</asp:ListItem>
                                    <asp:ListItem>Rs 2Lakh</asp:ListItem>
                                    <asp:ListItem>Rs 3Lakh</asp:ListItem>
                                    <asp:ListItem>Rs 4Lakh</asp:ListItem>
                                    <asp:ListItem>Rs 5Lakh</asp:ListItem>
                                </asp:DropDownList>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="DDL_AnnualIncomeFrom" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" CollapseControlID="Panel1"
            Collapsed="true" ExpandControlID="Panel1" ImageControlID="Image1" CollapsedImage="~/Images/downarrow.jpg"
            ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="Panel2"
            ScrollContents="false">
        </ajax:CollapsiblePanelExtender>
    </div>
    <div>
        <asp:Panel ID="Panel3" runat="server" CssClass="pnlCSS">
            <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                <div style="float: left; color: Black; padding: 5px 5px 0 0">
                    Horoscope
                </div>
                <div style="float: right; color: Black; padding: 10px 10px 0 0">
                    <asp:Image ID="Image2" runat="server" />
                </div>
                <div style="clear: both">
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="10" CssClass="pnlCSS">
            <table class="style1">
                <tr>
                    <td class="style4">
                        <br />
                        <asp:Label ID="Lbl_Star" runat="server" Text="Star"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                        <asp:ListBox ID="DDL_StarSearch" runat="server" SelectionMode="Multiple" Width="300"
                            data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <br />
                        <asp:Label ID="Lbl_Manglik" runat="server" Text="Manglik"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButton ID="Rbtn_Manglik1" GroupName="Manglik" runat="server" Text="Doesnot Matter" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Manglik2" GroupName="Manglik" runat="server" Text="No" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Manglik3" GroupName="Manglik" runat="server" Text="Yes" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" CollapseControlID="Panel3"
            Collapsed="true" ExpandControlID="Panel3" ImageControlID="Image2" CollapsedImage="~/Images/downarrow.jpg"
            ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="Panel4"
            ScrollContents="false">
        </ajax:CollapsiblePanelExtender>
    </div>
    <div>
    </div>
    <div>
        <asp:Panel ID="Panel5" runat="server" CssClass="pnlCSS">
            <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                <div style="float: left; color: Black; padding: 5px 5px 0 0">
                    Habits
                </div>
                <div style="float: right; color: Black; padding: 10px 10px 0 0">
                    <asp:Image ID="Image3" runat="server" />
                </div>
                <div style="clear: both">
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" Height="10" CssClass="pnlCSS">
            <table class="style1">
                <tr>
                    <td class="style5">
                        <br />
                        <asp:Label ID="Lbl_Eating" runat="server" Text="Eating Habits"></asp:Label>
                    </td>
                    <td>
                        <br />
                        &nbsp;<asp:CheckBox ID="CkBox_Eatinghabits1" runat="server" Text="All" OnCheckedChanged="CkBox_Eatinghabits1_CheckedChanged" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Eatinghabits2" runat="server" Text="Vegetarian" OnCheckedChanged="CkBox_Eatinghabits2_CheckedChanged" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Eatinghabits3" runat="server" Text="Non-Vegetarian" OnCheckedChanged="CkBox_Eatinghabits3_CheckedChanged" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Eatinghabits4" runat="server" Text="Eggetarian" OnCheckedChanged="CkBox_Eatinghabits4_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <br />
                        <asp:Label ID="Lbl_Drinking" runat="server" Text="Drinking"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:CheckBox ID="CkBox_Drinking1" runat="server" Text="All" OnCheckedChanged="CkBox_Drinking1_CheckedChanged1" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Drinking2" runat="server" Text="Non-Drinker" OnCheckedChanged="CkBox_Drinking2_CheckedChanged" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Drinking3" runat="server" Text="Light/Social drinker" OnCheckedChanged="CkBox_Drinking3_CheckedChanged1" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Drinking4" runat="server" Text="Regular Drinker" OnCheckedChanged="CkBox_Drinking4_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <br />
                        <asp:Label ID="Lbl_Smoking" runat="server" Text="Smoking"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:CheckBox ID="CkBox_Smoking1" runat="server" Text="All" OnCheckedChanged="CkBox_Smoking1_CheckedChanged" />
                        &nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Smoking2" runat="server" Text="Non-Smoker" OnCheckedChanged="CkBox_Smoking2_CheckedChanged" />
                        &nbsp;
                        <asp:CheckBox ID="CkBox_Smoking3" runat="server" Text="Light/Social Smoker" OnCheckedChanged="CkBox_Eatinghabits3_CheckedChanged" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CkBox_Smoking4" runat="server" Text="Regular Smoker" OnCheckedChanged="CkBox_Smoking4_CheckedChanged" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" CollapseControlID="Panel5"
            Collapsed="true" ExpandControlID="Panel5" ImageControlID="Image3" CollapsedImage="~/Images/downarrow.jpg"
            ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="Panel6"
            ScrollContents="false">
        </ajax:CollapsiblePanelExtender>
    </div>
    <div>
        <asp:Panel ID="Panel7" runat="server" CssClass="pnlCSS">
            <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                <div style="float: left; color: Black; padding: 5px 5px 0 0">
                    KeyWords
                </div>
                <div style="float: right; color: Black; padding: 10px 10px 0 0">
                    <asp:Image ID="Image4" runat="server" />
                </div>
                <div style="clear: both">
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel8" runat="server" Height="10" CssClass="pnlCSS">
            Enter Keywords within quotes and for more than one keyword use a comma separator
            between wordslExtender>--%>
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            Enter Keywords within quotes and for more than one keyword use a comma separator
                            between words<br />
                            Example:&quot;Good Looking&quot;,&quot;Well Settled&quot;,etc.<br />
                            Keywords are searched against the profile descrption of a member
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="53px" TextMode="MultiLine" Width="281px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
        <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="server" CollapseControlID="Panel7"
            Collapsed="true" ExpandControlID="Panel7" ImageControlID="Image4" CollapsedImage="~/Images/downarrow.jpg"
            ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="Panel8"
            ScrollContents="false">
        </ajax:CollapsiblePanelExtender>
    </div>
    <div>
        <table class="style1">
            <tr>
                <td class="style6">
                    <br />
                    <br />
                    <asp:Label ID="Lbl_Profile" runat="server" Text="Show Profile"></asp:Label>
                </td>
                <td>
                    <br />
                    <br />
                    <asp:CheckBox ID="CkBox_Profile1" runat="server" Text="With Photo" />
                    &nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_Profile2" runat="server" Text="Horoscope" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <br />
                    <asp:Label ID="LbL_DontShow" runat="server" Text="Don't Show"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:CheckBox ID="CkBox_DontShow1" runat="server" Text="Ignored Profiles" />
                    &nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_DontShow2" runat="server" Text="Profiles already contacted" />
                    &nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_DontShow3" runat="server" Text="Viewed Profiles" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_DontShow4" runat="server" Text="Shotlisted Profiles" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;
                </td>
                <td>
                    <br />
                    <br />
                    <asp:Button ID="BTN_Search" runat="server" Text="Search" />
                    &nbsp;
                    <asp:Label ID="Lbl_Or" runat="server" Text="(Or)"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Button ID="Btn_SaveAndSearch" runat="server" Text="Save &amp; Search" OnClick="Btn_SaveAndSearch_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <asp:HiddenField ID="HiddenCaste" runat="server" />
    <asp:HiddenField ID="HiddenMothTongue" runat="server" />
    <asp:HiddenField ID="HiddenCountry" runat="server" />
    <asp:HiddenField ID="HiddenEducation" runat="server" />
    <asp:HiddenField ID="HiddenOccupation" runat="server" />
    <asp:HiddenField ID="HiddenStar" runat="server" />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </form>
</body>
</html>
