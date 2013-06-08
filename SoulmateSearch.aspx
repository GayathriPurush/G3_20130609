<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SoulmateSearch.aspx.cs" Inherits="SoulmateSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <link href="chosen-master/chosen/chosen.css" rel="stylesheet" type="text/css" />
    <script src="chosen-master/chosen/chosen.jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        jQuery(document).ready(function () {
            jQuery(".chzn-select").chosen();


            $('#DDL_CasteSearch').chosen();
            $('#DDL_CasteSearch').chosen().change(function () {
                var Castevalue = $('#DDL_CasteSearch').val();
                $('#<%= HiddenCaste.ClientID %>').val(Castevalue);
            });

            $('#DDL_MothTongueSearch').chosen();
            $('#DDL_MothTongueSearch').chosen().change(function () {
                var MothTonguevalue = $('#DDL_MothTongueSearch').val();
                $('#<%= HiddenMothTongue.ClientID %>').val(MothTonguevalue);
            });

            $('#DDL_CountrySearch').chosen();
            $('#DDL_CountrySearch').chosen().change(function () {
                var Countryvalue = $('#DDL_CountrySearch').val();
                $('#<%= HiddenCountry.ClientID %>').val(Countryvalue);
            });


            $('#DDL_EducationSearch').chosen();
            $('#DDL_EducationSearch').chosen().change(function () {
                var Educationvalue = $('#DDL_EducationSearch').val();
                $('#<%= HiddenEducation.ClientID %>').val(Educationvalue);
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
            width: 168px;
        }
        .style3
        {
            width: 168px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
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
                    <asp:Label ID="LblHeading" runat="server" Text="Basic search Criteria" Font-Bold="True"
                        Font-Size="Large"></asp:Label>
                    <br />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_Gender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:RadioButton ID="Rbtn_Female" runat="server" GroupName="GenderSelection" 
                        Text="Female" oncheckedchanged="Rbtn_Female_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Rbtn_Male" runat="server" GroupName="GenderSelection" 
                        Text="Male" oncheckedchanged="Rbtn_Male_CheckedChanged" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_Age" runat="server" Text="Age"></asp:Label>
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
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_Height" runat="server" Text="Height"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:DropDownList ID="DDL_FromHeight" SelectionMode="Multiple" Width="127px" data-placeholder="Choose a Height..."
                        class="chzn-select" runat="server" Height="22px">
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Label ID="Lbl_ToHeight" runat="server" Text="To"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_ToHeight" SelectionMode="Multiple" Width="127px" data-placeholder="Choose a Height..."
                        class="chzn-select" runat="server" Height="22px">
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
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_MartialStatus" runat="server" Text="Martial Status"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:CheckBox ID="CkBox_Any" runat="server" Text="Any" 
                        oncheckedchanged="CkBox_Any_CheckedChanged" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Unmarried" runat="server" Text="UnMarried" 
                        oncheckedchanged="CkBox_Unmarried_CheckedChanged" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Widow" runat="server" Text="Widow" 
                        oncheckedchanged="CkBox_Widow_CheckedChanged" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Divorced" runat="server" Text="Divorced" 
                        oncheckedchanged="CkBox_Divorced_CheckedChanged" />
                    &nbsp;
                    <asp:CheckBox ID="CkBox_Awaiting" runat="server" Text="Awaiting Divorce" 
                        oncheckedchanged="CkBox_Awaiting_CheckedChanged" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_Religion" runat="server" Text="Religion"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:ListBox ID="DDl_ReligionSearch" runat="server" Width="300" data-placeholder="Select..."
                        class="chzn-select" AutoPostBack="True" OnSelectedIndexChanged="DDl_ReligionSearch_SelectedIndexChanged">
                    </asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_MotherTong" runat="server" Text="Mother Tongue"></asp:Label>
                </td>
                <td>
                    <asp:ListBox ID="DDL_MothTongueSearch" runat="server" SelectionMode="Multiple" Width="300"
                        data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_Caste" runat="server" Text="Caste"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:ListBox ID="DDL_CasteSearch" runat="server" SelectionMode="Multiple" Width="300"
                        data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_Country" runat="server" Text="Country"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:ListBox ID="DDL_CountrySearch" runat="server" SelectionMode="Multiple" Width="300"
                        data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <br />
                    <asp:Label ID="Lbl_Edu" runat="server" Text="Education"></asp:Label>
                </td>
                <td class="style4">
                    <br />
                    <asp:ListBox ID="DDL_EducationSearch" runat="server" SelectionMode="Multiple" Width="300"
                        data-placeholder="Select..." class="chzn-select"></asp:ListBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <br />
                    <asp:Label ID="Lbl_MutalInterest" runat="server" Text="Mutal Interests"></asp:Label>
                </td>
                <td class="style4">
                    <br />
                    <asp:CheckBox ID="CkBox_MutalInterest1" runat="server" Text="Attractive" />
&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest2" runat="server" 
                         Text="Well Educated" />
&nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest3" runat="server" 
                        Text="Warm &amp; Friendly" />
&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest4" runat="server" Text="Family Oriented" />
&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest5" runat="server" Text="Loving" />
&nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest6" runat="server" Text="Enjoy Music" />
                    <br />
                    <asp:CheckBox ID="CkBox_MutalInterest7" runat="server" Text="Likes Nature" />
&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest8" runat="server" Text="Likes Art" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest9" runat="server" Text="Blood Donor" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_MutalInterest10" runat="server" Text="Enjoys Food" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
                    <asp:Label ID="Lbl_ShowProfile" runat="server" Text="ShowProfile"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:CheckBox ID="CkBox_WithPhoto" runat="server" Text="With Photo" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CkBox_HoroScope" runat="server" Text="With HoroScope" />
                    <br />
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
                    <asp:Button ID="BTN_Search" runat="server" Text="Search" 
                        onclick="BTN_Search_Click" />
                    &nbsp;
                    <asp:Label ID="Lbl_Or" runat="server" Text="(Or)"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Button ID="Btn_SaveAndSearch" runat="server" Text="Save &amp; Search" />
                </td>
            </tr>
            </table>
    </div>

    <asp:HiddenField ID="HiddenCaste" runat="server" />
    <asp:HiddenField ID="HiddenMothTongue" runat="server" />
    <asp:HiddenField ID="HiddenCountry" runat="server" />
    <asp:HiddenField ID="HiddenEducation" runat="server" />

    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

    </form>
    
</body>
</html>
