<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sampletest.aspx.cs" Inherits="sampletest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Lbl_ProfileFor" runat="server" Text="Profile For"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_ProfileFor" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_Name" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtBox_Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_Dob" runat="server" Text="Age/Date Of Birth"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_DobText" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_Height" runat="server" Text="Height:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_HeightInches" runat="server">
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:Label ID="Lbl_or" runat="server" Text="Or"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_HeightCms" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_Weight" runat="server" Text="Weight" ToolTip="         "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_WeightKgs" runat="server">
                    </asp:DropDownList>
&nbsp;
                    <asp:Label ID="Lbl_or2" runat="server" Text="Or"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DDL_WeightLbs" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_maritalstatus" runat="server" Text="Marital Status" 
                        ToolTip=" "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Lbl_MaritalText" runat="server" Text="Label"></asp:Label>
&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_BodyType" runat="server" Text="Body Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Rbtn_Slim" runat="server" Text="Slim" />
                    <asp:RadioButton ID="Rbtn_Athaletic" runat="server" Text="Athaletic" />
                    <asp:RadioButton ID="Rbtn_Avearage" runat="server" Text="Average" />
                    <asp:RadioButton ID="Rbtn_Heavy" runat="server" Text="Heavy" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_Complextion" runat="server" Text="Complextion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Rbtn_VeryFair" runat="server" Text="Very Fair" />
&nbsp;
                    <asp:RadioButton ID="Rbtn_Fair" runat="server" Text="Fair" />
&nbsp;
                    <asp:RadioButton ID="Rbtn_Wheatish" runat="server" Text="Wheatish" />
&nbsp;
                    <asp:RadioButton ID="Rbtn_Dark" runat="server" Text="Dark" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_physicalStatus" runat="server" Text="Physical Status"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Rbtn_Normal" runat="server" Text="Normal" />
                    <asp:RadioButton ID="Rbtn_PhyChallenged" runat="server" 
                        Text="Physically Challenged" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lbl_MothTong" runat="server" Text="Mother Tongue"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="ckBox_Tamil" runat="server" Text="Tamil" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                    <asp:CheckBox ID="CheckBox6" runat="server" />
                    <asp:CheckBox ID="CheckBox7" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
