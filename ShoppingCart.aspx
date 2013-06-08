<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .productItem
        {    
            width: 140px;
            float:inherit;
            padding: 5px;
            margin: 5px;
            text-align: left;
        }
        .productItem2
        {
            width:230px;
            height:300px;
            float: left;
            padding: 5px;
            margin: 5px;
            text-align: center;
        }
        .groupSeparator
        {
            <%--border-top: 1px dotted Gray;--%>
            height: 500px;
            clear: both;
        }
        .itemSeparator
        {
            height: 180px;
            width: 100px;
            border-left: 10px dotted Gray;
            margin-top: 50px;
            margin-bottom: 50px;
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView runat="server" ID="listView" GroupItemCount="1">
            <LayoutTemplate>
                <div style="width: 500px;">
                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
                </div>
            </LayoutTemplate>
            <GroupTemplate>
                <div style="clear: both;">
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                </div>
            </GroupTemplate>
            <ItemTemplate>
                <asp:Panel ID="Panel2" runat="server" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3px"
                    Height="380px" Width="750px">
                    <asp:Panel runat="server">
                        <div class="productItem">
                            <div class="productItem2">
                                    <asp:HyperLink Text='<%#  Eval("MatrimonyID") %>' NavigateUrl="~/Home.aspx" runat="server" />
                                    
                                <br />
                                <br />
                                <img src='<%#  Eval("CityName") %>' height="200" width="150" alt="photo" />
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server"> 
                        <table>
                            <tr>
                                <td>
                                    <b>Profile Created for:</b>
                                </td>
                                <td>
                                    <%# Eval("ProfileFor")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Name:</b>
                                </td>
                                <td>
                                    <%# Eval("Name")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Religion:</b>
                                </td>
                                <td>
                                    <%# Eval("ReligionName")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Caste,Sub Caste:</b>
                                </td>
                                <td>
                                    <%# Eval("CasteName")%>,<%# Eval("SubcasteName")%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Star:</b>
                                </td>
                                <td>
                                    <%# Eval("StarName")%>
                                </td>
                            </tr>                            
                            <tr>
                                <td>
                                    <b>Location:</b>
                                </td>
                                <td>
                                   <%# Eval("CityName")%>,<%# Eval("StateName")%>,<%# Eval("CountryName")%>
                                </td>
                            </tr>                            
                            <tr>
                                <td>
                                    <b>Education:</b>
                                </td>
                                <td>
                                    <%# Eval("EducationName")%>
                                </td>
                            </tr>                            
                            <tr>
                                <td>
                                    <b>Occupation:</b> 
                                </td>
                                <td>
                                    <%# Eval("OccupName")%>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <div>
                            <a href="AdvancedSearch.aspx">View Full Profile </a>
                            <br />
                        </div>
                        <%-- <asp:Button ID="Button1" runat="server" Height="25px" Width="150px" Text="Express Interest"   />
                        --%>
                    </asp:Panel>
                    <br />
                </asp:Panel>
            </ItemTemplate> 
            <ItemSeparatorTemplate>
                <br />
                <div class="itemSeparator">
                </div>
            </ItemSeparatorTemplate>
            <GroupSeparatorTemplate>
                <div class="groupSeparator">
                </div>
            </GroupSeparatorTemplate>
            <EmptyDataTemplate>
            </EmptyDataTemplate>
        </asp:ListView>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView>
    </div>
    </form>
</body>
</html>
