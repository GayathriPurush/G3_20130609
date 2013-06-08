<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tab.aspx.cs" Inherits="Tab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Stylish CSS3 &amp; jQuery Content Slider</title> 
   <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $('li').click(function () {
                var number = $(this).index();
                $('h2').slideUp(400).eq(number).slideDown(400);
                $('p').slideUp(400).eq(number).slideDown(400);
                $('li').removeClass('inactive').addClass('active');
                $('li').not(this).removeClass('active').addClass('inactive');
            });

            $('h2').not(':first').hide();
            $('p').not(':first').hide();
        });

    </script>
</head> 
 
<body>
    <form id="form1" runat="server">
    <div>
    <div id="navbar">

    <ul>
    
        <li class="active"><a href="SearchCriteria.aspx">SearchCriteria</a></li>
        <li class="inactive"><a href="AdvancedSearch.aspx">AdvancedSearch</a></li>
        <li class="inactive"><a href="WhosOnlineSearch.aspx">WhosOnlineSearch</a></li>
        <li class="inactive"><a href="SoulmateSearch.aspx">SoulmateSearch</a></li>
         <li class="inactive"><a href="KeywordSearch.aspx">KeywordSearch</a></li>

    </ul>


</div>


    </div>
    </form>

</body>
</html>
