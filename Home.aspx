<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="menu.css" rel="stylesheet" type="text/css" />
    <script src="jquery.js" type="text/javascript"></script>
    <script src="menu.js" type="text/javascript"></script>

   
</head>
<body>
    
       


    <div id="menu">
		<ul class="menu">
			<li><a href="Home.aspx" ><span>My Home</span></a>				
			</li>
			<li><a href="#" class="parent"><span>Search</span></a>
				<div >
                    <ul >
                        <li><a href="SearchCriteria.aspx">Regular search </a></li>
                        <li><a href="AdvancedSearch.aspx">Advanced search With Subcaste & gothra</a></li>
                        <li><a href="SoulmateSearch.aspx">Soulmate search </a></li>
                        <li><a href="KeywordSearch.aspx">Keyword search </a></li>
                        <li><a href="WhosOnlineSearch.aspx">Who's Online </a></li>
                    </ul>                   
                </div>
			</li>
			<li><a href="#" class="parent"><span>Matches</span></a></li>
            <li><a href="#" class="parent"><span>Messages</span></a></li>
			<li ><a href="#" class="parent"><span>Profile</span></a>
              <div>
              <ul>
            <li><a href="#">Edit Profile</a></li>
            <li><a href="#">Upload Photo</a></li>
            <li><a href="#">Add/Edit Matrimony Stamp</a></li>
            <li><a href="#">Edit Mobile Number</a></li>
            <li><a href="#">Generate/Add Horoscope</a></li>
            <li><a href="#">Add/Edit Partner Preference</a></li>
            <li><a href="#">Add/Edit Family Details  </a></li>
            <li><a href="#">Add/Invite Reference</a></li>
            <li><a href="#">Add/Edit Hobbies &Interests</a></li>
            <li><a href="#">Edit Settings</a></li>
            <li><a href="#">Delete Profile</a></li>
            </ul>            
             </div>
          </li>
          <li><a href="#" class="parent"><span>Help</span></a></li>
		</ul>
	</div>

    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btn_Register" runat="server" Text="Register" OnClick="Btn_Register_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btn_Login" runat="server" OnClick="Btn_Login_Click" Text="Login" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
