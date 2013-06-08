<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrapjs/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="bootstrapjs/jquery.splitter.css" rel="stylesheet" type="text/css" />
    <script src="bootstrapjs/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="bootstrapjs/bootstrap.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

        });
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            margin-right: 0px;
        }
        .style9
        {
            width: 3%;
        }
        .LabelStyle
        {
            font-size: small;
            font-family: Arial;
            float: left;
            clear: none;
            display: block;
            padding: 2px 1em 0 0;
        }
        .LabelDisplay
        {
            font-size: small;
            font-family: Arial;
            font-weight: bold;
        }
        
        input[type="checkbox"], input[type="radio"], input.radio, input.checkbox
        {
            vertical-align: text-top;
            width: 13px;
            height: 13px;
            padding: 0;
            margin: 0;
            position: relative;
            overflow: hidden;
            top: 2px;
        }
        .CheckboxStyle
        {
            font-size: smaller;
            font-size: small;
            font-family: Arial;
            float: left;
            clear: none;
            display: block;
            padding: 2px 1em 0 0;
        }
        .style10
        {
            width: 13%;
        }
        .style11
        {
            width: 9%;
        }
        .style12
        {
            width: 11%;
        }
        .style13
        {
            width: 7%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h3>
        Personal Information
    </h3>
    <br />
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" EnablePageMethods="true" EnablePartialRendering="true"
        runat="server">
    </asp:ScriptManager>
    <div id="demo1">
        <asp:Panel ID="Panel1" runat="server" Style="z-index: 1; left: 113px; top: 62px;
            position: absolute; height: 2251px; width: 745px" BorderStyle="Ridge">
            <div style="height: 142px; width: 742px;">
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="Lbl_Desc" runat="server" Text="In my own words" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <caption>
                        <label class="LabelDisplay">
                        ...........................................................................................................................................................................................
                        </label>
                    </caption>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<a href="#myproject" role="button" data-toggle="modal" style="color: Black;
                                font-weight: bold; z-index: 1; left: 589px; top: 72px; position: absolute; height: 20px;
                                width: 52px;">Edit</a>
                            <asp:Label ID="LblMailDesc" runat="server" Height="59px" Text="Label" Width="643px"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <br />
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="Lbl_BasicDetails" runat="server" Text="Basic Details" Font-Bold="True"
                                Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <caption>
                        <label class="LabelDisplay">
                        ...........................................................................................................................................................................................
                        </label>
                    </caption>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<a href="#BasicDetails" role="button" data-toggle="modal" style="color: Black;
                                font-weight: bold; z-index: 1; left: 576px; top: 1972px; position: absolute; height: 19px;
                                width: 30px; bottom: -970px;">Edit</a>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Profile created For:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                        <td>
                            <label class="LabelDisplay">
                                Name:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Body Type/Complexion:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                        <td>
                            <label class="LabelDisplay">
                                Age:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Physical Status:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                        <td>
                            <label class="LabelDisplay">
                                Height:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Weight:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                        <td>
                            <label class="LabelDisplay">
                                Mother Tongue:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Marital Status:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                        <td>
                            <label class="LabelDisplay">
                                Eating Habits:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Drinking Habits:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                        <td>
                            <label class="LabelDisplay">
                                Smoking Habits:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                </table>
            </div>
            <br />
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Religious Information:
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                ...........................................................................................................................................................................................
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<a href="#ReligiousInfo" role="button" data-toggle="modal" style="color: Black;
                                font-weight: bold; z-index: 1; left: 586px; top: 457px; position: absolute; height: 20px;
                                width: 52px;">Edit</a>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style1" width="50%">
                    <tr>
                        <td class="style13">
                            <label class="LabelDisplay">
                                Religion
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <label class="LabelDisplay">
                                Caste/ SubCaste
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <label class="LabelDisplay">
                                Gothram
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <label class="LabelDisplay">
                                Star/ Raasi
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <label class="LabelDisplay">
                                Chevvai Dosham
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                <br />
                                Professional Information
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                ...........................................................................................................................................................................................
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<a href="#ProfessionalInfo" role="button" data-toggle="modal" style="color: Black;
                                font-weight: bold; z-index: 1; left: 589px; top: 823px; position: absolute; height: 20px;
                                width: 52px;">Edit</a>
                        </td>
                    </tr>
                </table>
                <table class="style1" width="50%">
                    <tr>
                        <td class="style11">
                            <label class="LabelDisplay">
                                Education
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <label class="LabelDisplay">
                                Education in detail
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <label class="LabelDisplay">
                                Occupation
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <label class="LabelDisplay">
                                Occupation in detail
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <label class="LabelDisplay">
                                Employed in
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <label class="LabelDisplay">
                                Annual Income
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                <br />
                                Family Details
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                ...........................................................................................................................................................................................
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<a href="#FamilyDetails" role="button" data-toggle="modal" style="color: Black;
                                font-weight: bold; z-index: 1; left: 598px; top: 1183px; position: absolute;
                                height: 20px; width: 52px;">Edit</a>
                        </td>
                    </tr>
                </table>
                <table class="style1" width="50%">
                    <tr>
                        <td class="style10">
                            <label class="LabelDisplay">
                                Family Values:
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                        <td class="style10">
                            <label class="LabelDisplay">
                                Father's Occupation:
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <label class="LabelDisplay">
                                Family Type:
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                        <td class="style10">
                            <label class="LabelDisplay">
                                Mother's Occupation:
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <label class="LabelDisplay">
                                Family Status
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                        <td class="style10">
                            <label class="LabelDisplay">
                                No of brother(s):
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <label class="LabelDisplay">
                                Ancestral/ Family Origin:
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                        <td class="style10">
                            <label class="LabelDisplay">
                                No of sister(s):
                            </label>
                        </td>
                        <td width="20%">
                            <label class="LabelStyle">
                                label
                            </label>
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                <br />
                                Hobbies and Interests
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                ...........................................................................................................................................................................................
                            </label>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="pnlHobbiesClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            Hobbies
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="imgArrows" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlHobbies" runat="server" Font-Names="Verdana" Font-Size="9pt" Width="733px"
                    Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbAct" />
                                    Acting
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbDance" />
                                    Dancing
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbPaint" />
                                    Painting
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbArt" />
                                    Art/Handicraft
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbFilm" />
                                    Film Making
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbPalm" />
                                    Palmistry
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbAstrology" />
                                    Astrology
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbFish" />
                                    Fishing
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbPets" />
                                    Pets
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbAstronomy" />
                                    Astronomy
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbGarden" />
                                    Gardening/ landscaping
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbPhoto" />
                                    Photography
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbCollect" />
                                    Collectibles
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbGraph" />
                                    Graphology
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbPlayIns" />
                                    Playing musical instruments
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbCook" />
                                    Cooking
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbNature" />
                                    Nature
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbPuzzle" />
                                    Puzzles
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbCrossword" />
                                    Crosswords
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbNumerology" />
                                    Numerology
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Hobbies" id="chkHobbOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtHobbOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="HobbiesCollapPanel" runat="server" CollapseControlID="pnlHobbiesClick"
                    Collapsed="true" ExpandControlID="pnlHobbiesClick" ImageControlID="imgArrows"
                    CollapsedImage="~/Images/downarrow.jpg" ExpandedImage="~/Images/uparrow.jpg"
                    ExpandDirection="Vertical" TargetControlID="pnlHobbies" ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlInterestsClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Interests </b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="Image1" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlInterests" runat="server" Font-Names="Verdana" Font-Size="9pt"
                    Width="733px" Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntAdvSports" />
                                    Adventure sports
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntNewLang" />
                                    Learning new languages
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntSports" />
                                    Sports
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntAltHeal" />
                                    Alternative healing/ medicine
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntMovies" />
                                    Movies
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntTV" />
                                    Television
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntBookClubs" />
                                    Book clubs
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntMusic" />
                                    Music
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntTheatre" />
                                    Theatre
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntCompGames" />
                                    Computer games
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntPolitics" />
                                    Politics
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntTravel" />
                                    Travel
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntHealthFit" />
                                    Health & Fitness
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntReading" />
                                    Reading
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntWriting" />
                                    Writing
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntInternet" />
                                    Internet
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntSocService" />
                                    Social Service
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntYoga" />
                                    Yoga
                                </label>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="Interests" id="chkIntOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtIntOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="InterestsCollapPanel" runat="server" CollapseControlID="pnlInterestsClick"
                    Collapsed="true" ExpandControlID="pnlInterestsClick" ImageControlID="Image1"
                    CollapsedImage="~/Images/downarrow.jpg" ExpandedImage="~/Images/uparrow.jpg"
                    ExpandDirection="Vertical" TargetControlID="pnlInterests" ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlFavMusicClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Favorite Music</b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="Image2" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlFavMusic" runat="server" Font-Names="Verdana" Font-Size="9pt" Width="733px"
                    Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicBlues" />
                                    Blues
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicHip" />
                                    Hip Hop
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicRap" />
                                    Rap
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicDevo" />
                                    Devotional
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicHouse" />
                                    House Music
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicReggae" />
                                    Reggae
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicDisco" />
                                    Disco
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicClassic" />
                                    Indian classical
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicSufi" />
                                    Sufi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicNo" />
                                    I'm not a music fan
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicIndiPop" />
                                    Indi pop
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicTechno" />
                                    Techno
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicFilm" />
                                    Film Songs
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicJazz" />
                                    Jazz
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicWester" />
                                    Western classicals
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicGhazal" />
                                    Ghazals
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicPop" />
                                    Pop
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicHeavy" />
                                    Heavy Metal
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicQawalis" />
                                    Qawalis
                                </label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavMusic" id="chkFavMusicOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtFavMusicOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="FavMusicCollapPanel" runat="server" CollapseControlID="pnlFavMusicClick"
                    Collapsed="true" ExpandControlID="pnlFavMusicClick" ImageControlID="Image2" CollapsedImage="~/Images/downarrow.jpg"
                    ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="pnlFavMusic"
                    ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlFavReadClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Favorite Reads </b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="Image3" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlFavRead" runat="server" Font-Names="Verdana" Font-Size="9pt" Width="733px"
                    Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadBW" />
                                    Actually a bookworm
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadHist" />
                                    History
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadRomance" />
                                    Romance
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadBiography" />
                                    Biographies
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadHumor" />
                                    Humor
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadSciFict" />
                                    Science fiction
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadBiz" />
                                    Business/ Occupational
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadLit" />
                                    Literature
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadSelf" />
                                    Self-help
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadClassics" />
                                    Classics
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadMagaz" />
                                    Magazines/ newspapers
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadShortStory" />
                                    Short stories
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadComics" />
                                    Comics
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadPhilo" />
                                    Philosophy/ spiritual
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadNoBooks" />
                                    Stay away from books
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadFantasy" />
                                    Fantasy
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadPoetry" />
                                    Poetry
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadThrill" />
                                    Thriller/ suspense
                                </label>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavRead" id="chkReadOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtReadOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="FavReadCollapPanel" runat="server" CollapseControlID="pnlFavReadClick"
                    Collapsed="true" ExpandControlID="pnlFavReadClick" ImageControlID="Image3" CollapsedImage="~/Images/downarrow.jpg"
                    ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="pnlFavRead"
                    ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlPrefMovieClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Preferred Movies </b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="Image4" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlPrefMovie" runat="server" Font-Names="Verdana" Font-Size="9pt"
                    Width="733px" Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieAction" />
                                    Action/ suspense
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieNonCom" />
                                    Non-commercial/ art
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieShort" />
                                    Short films
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieEpics" />
                                    Epics
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieClassic" />
                                    Classics
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieFanatic" />
                                    Movie fanatic
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieNoMovie" />
                                    Not into movies
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieRomantic" />
                                    Romantic
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieDocument" />
                                    Documentaries
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieComedy" />
                                    Comedy
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieWorldCin" />
                                    World Cinema
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieSciFic" />
                                    Sci-fi & fantasy
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieHorror" />
                                    Horror
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieDrama" />
                                    Drama
                                </label>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefMovie" id="chkMovieOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtMovieOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="PrefMovieCollapPanel" runat="server" CollapseControlID="pnlPrefMovieClick"
                    Collapsed="true" ExpandControlID="pnlPrefMovieClick" ImageControlID="Image4"
                    CollapsedImage="~/Images/downarrow.jpg" ExpandedImage="~/Images/uparrow.jpg"
                    ExpandDirection="Vertical" TargetControlID="pnlPrefMovie" ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlSportActClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Sports/Fitness activities </b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="Image5" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlSportAct" runat="server" Font-Names="Verdana" Font-Size="9pt" Width="733px"
                    Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportAdvSports" />
                                    Adventure Sports
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportChess" />
                                    Chess
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportScrabble" />
                                    Scrabble
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportAerobics" />
                                    Aerobics
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportCrick" />
                                    Cricket
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportSquash" />
                                    Squash
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportBadmin" />
                                    Badminton
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportCycl" />
                                    Cycling
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportSwim" />
                                    Swimming/ Water sports
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportBasket" />
                                    Basketball
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportFoot" />
                                    Football
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportTT" />
                                    Table-tennis
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportBilliard" />
                                    Billiards/ snooker/ pool
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportGolf" />
                                    Golf
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportTennis" />
                                    Tennis
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportBowl" />
                                    Bowling
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportHockey" />
                                    Hockey
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportVolley" />
                                    Volleyball
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportCard" />
                                    Card games
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportJogg" />
                                    Jogging/ Walking
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportWeight" />
                                    Weight lifting
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportCarrom" />
                                    Carrom
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportMartial" />
                                    Martial arts
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportYoga" />
                                    Yoga/ meditation
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="SportAct" id="chkSportOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtSportOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="SportCollapPanel" runat="server" CollapseControlID="pnlSportActClick"
                    Collapsed="true" ExpandControlID="pnlSportActClick" ImageControlID="Image4" CollapsedImage="~/Images/downarrow.jpg"
                    ExpandedImage="~/Images/uparrow.jpg" ExpandDirection="Vertical" TargetControlID="pnlSportAct"
                    ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlFavCuisineClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Favourite Cuisine </b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="Image6" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlFavCuisine" runat="server" Font-Names="Verdana" Font-Size="9pt"
                    Width="733px" Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisArab" />
                                    Arabic
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisKonkan" />
                                    Konkan
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisSI" />
                                    South Indian
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisBeng" />
                                    Bengali
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisMex" />
                                    Mexican
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisSushi" />
                                    Sushi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisChinese" />
                                    Chinese
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisMoglai" />
                                    Moghlai
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisThai" />
                                    Thai
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisConti" />
                                    Continental
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisNoFood" />
                                    Not a foodie!
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisRajas" />
                                    Rajasthani
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisGuj" />
                                    Gujarati
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisPunj" />
                                    Punjabi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisItal" />
                                    Italian
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisFoodie" />
                                    I'm a foodie
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="FavCuisine" id="chkFavCuisOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtFavCuisOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="FavCuisineCollapPanel" runat="server" CollapseControlID="pnlFavCuisineClick"
                    Collapsed="true" ExpandControlID="pnlFavCuisineClick" ImageControlID="Image6"
                    CollapsedImage="~/Images/downarrow.jpg" ExpandedImage="~/Images/uparrow.jpg"
                    ExpandDirection="Vertical" TargetControlID="pnlFavCuisine" ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlPrefDressClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Preferred Dress Style </b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="imgPrefDress" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlPrefDress" runat="server" Font-Names="Verdana" Font-Size="9pt"
                    Width="733px" Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefDress" id="chkDressCasual" />
                                    Casual Wear
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefDress" id="chkDressDesigner" />
                                    Designer Wear
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefDress" id="chkDressIndian" />
                                    Indian/ Ethnic Wear
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefDress" id="chkDressWestern" />
                                    Western Formal Wear
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefDress" id="chkDressOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtDressOthers" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="PrefDressCollapPanel" runat="server" CollapseControlID="pnlPrefDressClick"
                    Collapsed="true" ExpandControlID="pnlPrefDressClick" ImageControlID="imgPrefDress"
                    CollapsedImage="~/Images/downarrow.jpg" ExpandedImage="~/Images/uparrow.jpg"
                    ExpandDirection="Vertical" TargetControlID="pnlPrefDress" ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <div>
                <asp:Panel ID="pnlLangClick" runat="server" CssClass="pnlCSS">
                    <div style="background-image: url('green_bg.gif'); height: 30px; vertical-align: middle">
                        <div style="float: left; color: Black; padding: 5px 5px 0 0">
                            <b>Spoken Languages </b>
                        </div>
                        <div style="float: right; color: Black; padding: 10px 10px 0 0">
                            <asp:Image ID="imgLanguage" runat="server" />
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlLang" runat="server" Font-Names="Verdana" Font-Size="9pt" Width="733px"
                    Height="126px">
                    <table>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangAssam" />
                                    Assamese
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangKonkani" />
                                    Konkani
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangSindhi" />
                                    Sindhi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangBengali" />
                                    Bengali
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangKutchi" />
                                    Kutchi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangTamil" />
                                    Tamil
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangEng" />
                                    English
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangMalayalam" />
                                    Malayalam
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangTelugu" />
                                    Telugu
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangGuj" />
                                    Gujarathi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangMara" />
                                    Marathi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangTulu" />
                                    Tulu
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangHindi" />
                                    Hindi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangMarwadi" />
                                    Marwadi
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangUrdu" />
                                    Urdu
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangKannada" />
                                    Kannada
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangOriya" />
                                    Oriya
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangKashmiri" />
                                    Kashmiri
                                </label>
                            </td>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangPunj" />
                                    Punjabi
                                </label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="LabelStyle">
                                    <input type="checkbox" name="PrefLang" id="chkLangOthers" />
                                    Others
                                </label>
                                <input type="text" id="txtLanguage" />
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" CollapseControlID="pnlLangClick"
                    Collapsed="true" ExpandControlID="pnlLangClick" ImageControlID="imgLanguage"
                    CollapsedImage="~/Images/downarrow.jpg" ExpandedImage="~/Images/uparrow.jpg"
                    ExpandDirection="Vertical" TargetControlID="pnlLang" ScrollContents="false">
                </ajax:CollapsiblePanelExtender>
                <label class="LabelDisplay">
                    ...........................................................................................................................................................................................</label>
            </div>
            <table>
                <tr>
                    <td>
                        <label class="LabelDisplay">
                        -------------------------------------------------------------------------------------------------------------------------------------------
                        </label>
                   </td>
                </tr>
                <tr>
                    <td>
                        <label class="LabelDisplay">
                        PARTNER PREFERENCE
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="LabelStyle">
                        The fields including Preferred Age, Marital Status, Height, Physical Status, 
                        Religion, Caste, Manglik, Eating Habits, Mother Tongue, Country Living In, 
                        Citizenship and Education makes your basic partner preference, based on which 
                        you will receive daily matches. Profiles that match all the fields below will be 
                        tagged as &quot;Preferred Match&quot; in the mailers and across the site.
                        </label>
                    </td>
                </tr>
            </table>
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblPartnerBasicDet" runat="server" Text="Basic Details" Font-Bold="True"
                                Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <caption>
                        <label class="LabelDisplay">
                        ...........................................................................................................................................................................................
                        </label>
                    </caption>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<a href="#PartnerBasicDet" role="button" data-toggle="modal" style="color: Black;
                                font-weight: bold; z-index: 1; left: 591px; top: 217px; position: absolute; height: 20px;
                                width: 52px; bottom: 699px;">Edit</a>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Bride's Age:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Height:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Marital Status:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Physical Status:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Mother Tongue:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Eating Habits:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Drinking Habits:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Smoking Habits:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                Label
                            </label>
                        </td>
                    </tr>
                </table>
            </div>
            <br />
        </asp:Panel>
    </div>
    <div id="myproject" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-body">
            <label>
                Check Spelling & Preview/label>
                ails" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-body">
            <label>
                Basic Details</label>
            <table class="style1">
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Profile created for:
                        </label>
                    </td>
                    <td width="20%">
                        <asp:DropDownList ID="cboProfile" Font-Size="Larger" runat="server">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>My Self</asp:ListItem>
                            <asp:ListItem>Friend</asp:ListItem>
                            <asp:ListItem>Relative</asp:ListItem>
                            <asp:ListItem>Son</asp:ListItem>
                            <asp:ListItem>Daughter</asp:ListItem>
                            <asp:ListItem>Brother</asp:ListItem>
                            <asp:ListItem>Sister</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Name:
                        </label>
                    </td>
                    <td width="20%">
                        <asp:TextBox ID="txtName" runat="server" Font-Size="Small" Text="" BorderStyle="Solid"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Age/ Date of Birth:
                        </label>
                    </td>
                    <td width="20%">
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Height:
                        </label>
                    </td>
                    <td width="10%">
                        <asp:DropDownList ID="cboHghInches" Font-Size="Small" runat="server">
                        </asp:DropDownList>
                        <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="   Or    "></asp:Label>
                        <asp:DropDownList ID="cboHghCms" Font-Size="Small" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Weight:
                        </label>
                    </td>
                    <td width="10%">
                        <asp:DropDownList ID="cboWgtKg" runat="server" Font-Size="Small" Width="45%">
                        </asp:DropDownList>
                        <asp:Label ID="Label3" runat="server" Text="   Or    " Font-Size="Small" Width="10%"></asp:Label>
                        <asp:DropDownList ID="cboWgtLbs" runat="server" Font-Size="Small" Width="45%">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Marital Status:
                        </label>
                    </td>
                    <td width="20%">
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Body Type:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="radio" name="BodyType" id="optBodySlim" />
                            Slim
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="BodyType" id="optBodyAvg" />
                            Average
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="BodyType" id="optBodyAthlt" />
                            Athletic
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="BodyType" id="optBodyHeavy" />
                            Heavy
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Physical Status:
                        </label>
                    </td>
                    <td width="20%">
                        <label class="LabelStyle">
                            <input type="radio" name="PhyStatus" id="optPhysNormal" />
                            Normal
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="PhyStatus" id="optPhysChallen" />
                            Physically Challenged
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Complexion:
                        </label>
                    </td>
                    <td width="20%">
                        <label class="LabelStyle">
                            <input type="radio" name="Complexion" id="optComplexVF" />
                            Very Fair
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Complexion" id="optComplexF" />
                            Fair
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Complexion" id="optComplexW" />
                            Wheatish
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Complexion" id="optComplexWB" />
                            Wheatish Brown
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Complexion" id="optComplexD" />
                            Dark
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Mother Tongue:
                        </label>
                    </td>
                    <td width="20%">
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Know To Read:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="checkbox" name="KnowToRead" id="chkKnowToRead" />
                            Tamil
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Eating Habits:
                        </label>
                    </td>
                    <td width="20%">
                        <label class="LabelStyle">
                            <input type="radio" name="Eating" id="optEtngVeg" />
                            Vegetarian
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Eating" id="optEtngNonVeg" />
                            Non Vegetarian
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Eating" id="optEtngEgg" />
                            Eggetarian
                        </label>
                    </td>
                </tr>
                <tr>
                    <td width="20%">
                        <label class="LabelDisplay">
                            Drinking Habits:
                        </label>
                    </td>
                    <td width="20%">
                        <label class="LabelStyle">
                            <input type="radio" name="Drinking" id="optDrkgNo" />
                            No
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Drinking" id="optDrkgOcc" />
                            Occasionally
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Drinking" id="optDrkgYes" />
                            Yes
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="LabelDisplay">
                            Smoking Habits:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="radio" name="Smoking" id="optSmkgNo" />
                            No
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Smoking" id="optSmkgOcc" />
                            Occasionally
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Smoking" id="optSmkgYes" />
                            Yes
                        </label>
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <div class="modal-footer">
            <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="CreatePjt_Click" />
            <asp:Button runat="server" ID="btnCancel" Text="Cancel" OnClick="CloseBtn_Click" />
        </div>
    </div>
    <div id="ReligiousInfo" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-body">
            <label>
                <b>Religious Information</b>
                <br />
                Religion, caste, sub caste and gothra(m) fields cannot be modified. Please contact
                customer support to make changes.
            </label>
            <%--<asp:Label ID="lblRelIfo" runat="server" Text="Religion, caste, sub caste and gothra(m) fields cannot be modified. Please contact customer support to make changes."></asp:Label>--%>
            <br />
            <table class="style1">
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Religion:
                        </label>
                    </td>
                    <td class="style9">
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="LabelStyle">
                            .............................................................
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            .................................................
                        </label>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Caste/ Division:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            label
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Sub Caste:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        <label class="LabelDisplay">
                            <input type="radio" name="Community" id="optMarrySame" />
                            Willing to marry from the same community
                        </label>
                        <label class="LabelDisplay">
                            <input type="radio" name="Community" id="optMarryDiff" />
                            Willing to marry from other communities also
                        </label>
                    </td>
                    <td>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Gothra:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Zodiac/ Star Sign:
                        </label>
                    </td>
                    <td class="style9">
                        <asp:DropDownList ID="cboStarModalVal" runat="server" Font-Size="Small">
                        </asp:DropDownList>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Raasi/ Moon Sign:
                        </label>
                    </td>
                    <td class="style9">
                        <asp:DropDownList ID="cboRaasiModalVal" runat="server" Font-Size="Small">
                        </asp:DropDownList>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Zodiac/ Star Sign:
                        </label>
                    </td>
                    <td class="style9">
                        <asp:DropDownList ID="cboZodiacModalVal" runat="server" Font-Size="Small">
                        </asp:DropDownList>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Chevvai Dosham
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="radio" name="ChevvaiDosham" id="optChevvaiYes" />
                            Yes
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="ChevvaiDosham" id="optChevvaiNo" />
                            No
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="ChevvaiDosham" id="optChevvaiOcc" />
                            Occasionally
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
            </table>
            <br />
        </div>
        <div class="modal-footer">
            <asp:Button runat="server" ID="Button1" Text="Save" OnClick="CreatePjt_Click" />
            <asp:Button runat="server" ID="Button2" Text="Cancel" OnClick="CloseBtn_Click" />
        </div>
    </div>
    <div id="ProfessionalInfo" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-body">
            <label>
                <b>Professional Information</b>
            </label>
            <br />
            <table class="style1">
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Highest Education:
                        </label>
                    </td>
                    <td class="style9">
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            .............................................................
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            .................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Education in detail:
                        </label>
                    </td>
                    <td>
                        <input type="text" id="txtEduOccModal" />
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Occupation:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            Label
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Occupation in detail:
                        </label>
                    </td>
                    <td>
                        <input type="text" id="txtDetOccModal" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="LabelDisplay">
                            Employed in:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="radio" name="Employment" id="optEmpGov" />
                            Government
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Employment" id="optEmpPri" />
                            Private
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Employment" id="optEmpBiz" />
                            Business
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Employment" id="optEmpDef" />
                            Defence
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Employment" id="optEmpSelf" />
                            Self Employed
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Annual Income:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="radio" name="Income" id="optIncMon" />
                            Monthly
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="Income" id="optIncAnn" />
                            Annual
                        </label>
                        <select>
                            <option value="0">--Select--</option>
                            <option value="1">My Self</option>
                            <option value="2">Friend</option>
                        </select>
                        <input type="text" id="txtIncomeModal" />
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
            </table>
            <br />
        </div>
        <div class="modal-footer">
            <asp:Button runat="server" ID="Button3" Text="Save" OnClick="CreatePjt_Click" />
            <asp:Button runat="server" ID="Button4" Text="Cancel" OnClick="CloseBtn_Click" />
        </div>
    </div>
    <div id="FamilyDetails" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-body">
            <label>
                <b>Family Details</b>
            </label>
            <br />
            <table class="style1">
                <tr>
                    <td>
                        <label class="LabelDisplay">
                            Family Value:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="radio" name="FamilyValue" id="optFamValOrtho" />
                            Orthodox
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="FamilyValue" id="optFamValTradi" />
                            Traditional
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="FamilyValue" id="optFamValModer" />
                            Moderate
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="FamilyValue" id="optFamValLiber" />
                            Liberal
                        </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="LabelDisplay">
                            Family Type:
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            <input type="radio" name="FamilyType" id="optFamTypeJoint" />
                            Joint Family
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="FamilyType" id="optFamTypeNuclear" />
                            Nuclear Family
                        </label>
                        <label class="LabelStyle">
                            <input type="radio" name="FamilyType" id="optFamTypeOthers" />
                            Others
                        </label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            .............................................................
                        </label>
                    </td>
                    <td>
                        <label class="LabelStyle">
                            .................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <tr>
                        <td>
                            <label class="LabelDisplay">
                                Family Status:
                            </label>
                        </td>
                        <td>
                            <label class="LabelStyle">
                                <input type="radio" name="FamilyStatus" id="optFamStatMC" />
                                Middle Class
                            </label>
                            <label class="LabelStyle">
                                <input type="radio" name="FamilyStatus" id="optFamStatUMC" />
                                Upper Middle Class
                            </label>
                            <label class="LabelStyle">
                                <input type="radio" name="FamilyStatus" id="optFamStatRich" />
                                Rich
                            </label>
                            <label class="LabelStyle">
                                <input type="radio" name="FamilyStatus" id="optFamStatAffluent" />
                                Affluent
                            </label>
                        </td>
                    </tr>
                </tr>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Father's Occupation:
                        </label>
                        <input type="text" id="txtFatherOcc" />
                    </td>
                    <td>
                        <label class="LabelDisplay">
                            Mother's Occupation:
                        </label>
                        <input type="text" id="txtMotherOcc" />
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="style9">
                        <label class="LabelDisplay">
                            Ancestral/ Family Origin:
                        </label>
                        <input type="text" id="txtFamOrigin" />
                    </td>
                    <td>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        <label class="LabelDisplay">
                            No of brothers:
                        </label>
                        <select>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                        <label class="LabelDisplay">
                            Brothers Married
                        </label>
                        <select>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                    </td>
                    <td>
                        <label class="LabelDisplay">
                            No of sisters:
                        </label>
                        <select>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                        <label class="LabelDisplay">
                            Sisters Married
                        </label>
                        <select>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <label class="LabelStyle">
                            ................................................................................................................................
                        </label>
                    </td>
                </tr>--%>
                <label class="LabelStyle">
                    Please add your income as it is considered one of the deciding factors for marriage.
                    Please add digits only. You can use commas as separators. For Eg: 6,00,000 or 600000.
                </label>
            </table>
            <br />
        </div>
        <div class="modal-footer">
            <asp:Button runat="server" ID="Button5" Text="Save" OnClick="CreatePjt_Click" />
            <asp:Button runat="server" ID="Button6" Text="Cancel" OnClick="CloseBtn_Click" />
        </div>
    </div>
    </form>
</body>
<div>
</div>
</html>
