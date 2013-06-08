<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KeywordSearch.aspx.cs" Inherits="KeywordSearch" %>

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
    
        <table class="style1">
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Find Profile Based On Keywords."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="64px" Width="300px"></asp:TextBox>
                    <asp:Button ID="btn_search" runat="server" 
                        style="z-index: 1; left: 343px; top: 97px; position: absolute; width: 79px" 
                        Text="Search" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:CheckBox ID="CkBox_ProfileWithPhoto" runat="server" 
                        Text="Show Profile With Photo" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Text="Example 1: hindu,agarwal,f,25-30 yrs,delhi"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
