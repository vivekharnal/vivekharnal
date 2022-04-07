<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default"
    ViewStateEncryptionMode="Always" EnableEventValidation="false" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<html>
<head runat="server">
    <title>GENERAL ADMINISTRATION DEPARTMENT </title>
    <meta http-equiv="description" name="description" content="GENERAL ADMINISTRATOR DEPARTMENT " />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <script src='jss/styleswitch.js' type='text/javascript'></script>
    <link rel="icon" type="image/png" href="images1/favicon.png" />
    <link rel="stylesheet" href="csss/bootstrap.min.css" />
    <link rel="stylesheet" href="csss/font-awesome.min.css" />
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <link id="ctl00_ctl00_ThemeCss" rel="stylesheet" href="csss/style.css" />
    <link rel="stylesheet" href="csss/responsive.css" />
    <link rel="stylesheet" type="text/css" href="csss/swiper.min.css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="blue-theme"
        href="css/custom.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="blue-theme"
        href="css/custommenu.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="black-theme"
        href="csss/black.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="orange-theme"
        href="csss/themeorange.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="green-theme"
        href="csss/themegreen.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="orange-theme"
        href="csss/stylemenuorange.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="green-theme"
        href="csss/stylemenugreen.css" />
    <link rel="alternate stylesheet" type="text/css" media="screen" title="black-theme"
        href="csss/blackmenu.css" />
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src='jss/Print.js'></script>
    <script src="jss/jquery-3.6.0.min.js" type="text/javascript"></script>
   <%-- <script src='jss/jquery-2.1.1.min.js'></script>--%>
    <script src='jss/rv-jquery-fontsize-2.0.3.min.js'></script>
    <script type="text/javascript" src="jss/fluidtextresizer.js"></script>
    <script type="text/javascript">
        var mytextsizer = new fluidtextresizer({
            controlsdiv: "sizecontroldiv", //id of special div containing your resize controls. Enter "" if not defined
            targets: ["#content-section", ".usefull-link a", ".ticker-msg", "#dgActRule", ".copyright", ".visitortale", ".cd-top-nav li a"], //target elements to resize text within: ["selector1", "selector2", etc]
            levels: 2, //number of levels users can magnify (or shrink) text
            persist: "session", //enter "session" or "none"
            animate: 200 //animation duration of text resize. Enter 0 to disable
        })


    </script>
    <script type="text/javascript">
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
    </script>
    <script type="text/javascript">
        function goBack() {
            window.history.go(-1);
        }
    </script>
    <script type="text/javascript" language="javascript">
        function SetTarget() {
            document.forms[0].target = "_blank"
        }
        function ResetTarget() {
            document.forms[0].target = "_top"
        }

    </script>
    <script type="text/jscript" language="jscript">
        var $affectedElements = $("p"); // Can be extended, ex. $("div, p, span.someClass")

        // Storing the original size in a data attribute so size can be reset
        $affectedElements.each(function () {
            var $this = $(this);
            $this.data("orig-size", $this.css("font-size"));
        });

        $("#btn-increase").click(function () {
            changeFontSize(1);
        })

        $("#btn-decrease").click(function () {
            changeFontSize(-1);
        })

        $("#btn-orig").click(function () {
            $affectedElements.each(function () {
                var $this = $(this);
                $this.css("font-size", $this.data("orig-size"));
            });
        })

        function changeFontSize(direction) {
            $affectedElements.each(function () {
                var $this = $(this);
                $this.css("font-size", parseInt($this.css("font-size")) + direction);
            });
        }
    </script>
     <style>
        
        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }
    </style>
    <style>
        #mySidenav a
        {
            position: relative;
            left: -50px;
            transition: 0.3s;
            padding: 15px;
            width: 100px;
            text-decoration: none;
            font-size: 20px;
            color: white;
            border-radius: 0 5px 5px 0;
        }
        
        #mySidenav a:hover
        {
            left: 0;
        }
        
        #search
        {
            top: 20px;
            background-color: #337ab7f5;
        }
        .ticker-msg1 {
           background-color: #f6f6f6;
            border-radius: 0 4px 4px 0;
            float: left;
            font-size: 14px;
            padding: 3px 8px;
            height: 60px;
            width: 90%;
            text-align: center;
}
    </style>
    <link href="csss/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link rel="stylesheet" href="csss/stylemenu.css">
    <!-- Resource style -->
    <script src="js/modernizr.js"></script>
    <!-- Modernizr -->
</head>

    <body onload="disableBackButton()">
        <!--Header-->
        <header>


<%--<div id="sizecontroldiv" class="controlstyle">
    
<i style="font-size:18px" class="fa">&#xf015;</i> <a href="Default.aspx" style="font-weight:bold;">Home</a>  | <i style="font-size:18px" class="fa">&#xf095;</i>  <a href="gadDynamic/Contact-Us.aspx" style="font-weight:bold;">Contact Us</a> | <i style="font-size:18px;color:#ff0000;" class="fa">&#x1F50E;</i> <a id="Link31" style="color: #12377A;font-weight:bold;" href="gadDynamic/Search-Officers.aspx" >Search

</a> |

<a href="#content-section" title="Skip to Main Content" style="font-weight:bold;" >Skip to Main Content | </a>
<a href="gadDynamic/screenreader.aspx" title="Screen Reader Access" style="font-weight:bold;" >Screen Reader Access | </a>

<a href="#fontsize-1"><img src="images1/A-.png" title="Decrease Font Size" alt="Decrease Font Size"> </a>
<a href="javascript:mytextsizer.setFontLevel(0)"><img src="images1/A.png" alt="Actual Font Size" title="Actual Font Size"></a>
<a href="javascript:mytextsizer.setFontLevel(1)"><img src="images1/increase.png" alt="Increase Font Size" title="Increase Font Size"></a> |
<a href="#" onClick="chooseStyle('none', 60)"><img src="images1/styledefault.png" title="Default Style" alt="Default Style"></a>
                    <a href="#" onClick="chooseStyle('blue-theme', 60)"><img src="images1/styleblack.png" title="Default Style" alt="High Contrast"></a> |
<a href="#" onClick="chooseStyle('none', 60)"><img src="images1/blue-theme.png" title="Blue Theme" alt="Blue Theme"></a>
<a href="#" onClick="chooseStyle('orange-theme', 60)"><img src="images1/orange.png" title="Orange Theme" alt="Orange Theme"></a>
<a href="#" onClick="chooseStyle('green-theme', 60)"><img src="images1/green.png" title="Green Theme" alt="Green Theme"></a>

    
</div>--%>
<div class="row">
<div class="col-sm-8 col-md-8 col-lg-8">
<div class="logo">
<a href="#">
<%--<img src='images1/Seal_of_Jammu_and_Kashmir_color.png' alt="J & K logo" />--%></a>
<h1>GENERAL ADMINISTRATION DEPARTMENT </h1>
<div class="small">Government of Jammu & Kashmir</div>
<div class="clearfix"></div>
</div>
</div>

<div class="col-sm-4 col-md-4 col-lg-4">
<div class="row">
<div class="col-lg-12">

<div class="header-right-side">

<div class="clearfix"></div>
<div id="top-strip-in">
<div id="top-strip-in-right">
                                            
<div class="emergency-contact" style="margin-bottom: 4px;">

 
<span><i style="font-size:18px" class="fa">&#xf015;</i> <a href="Default.aspx">HOME</a>  || <i style="font-size:18px" class="fa">&#xf095;</i>  <a href="gadDynamic/Contact-Us.aspx">CONTACT US</a> || <i style="font-size:18px;color:#ff0000;" class="fa">&#x1F50E;</i> <a id="Link31" href="gadDynamic/Search-Officers.aspx">SEARCH

</a> </span>
</div>
<div class="top-strip-right">
      <a href="#" onClick="chooseStyle('none', 60)"><img src="images1/styledefault.png" title="Standard Contrast" alt="Standard Contrast"></a>
      <a href="#" onClick="chooseStyle('black-theme', 60)"><img src="images1/styleblack.png" title="High Contrast" alt="High Contrast"></a> 
    <a href="#" onClick="chooseStyle('none', 60)"><img src="images1/blue-theme.png" title="Blue Theme" alt="Blue Theme"></a>

<a href="#" onClick="chooseStyle('orange-theme', 60)"><img src="images1/brown.png" title="Brown Theme" alt="Brown Theme"></a>
<a href="#" onClick="chooseStyle('green-theme', 60)"><img src="images1/green.png" title="Green Theme" alt="Green Theme"></a>

</div>
<div class="top-strip-right">

<div id="sizecontroldiv" class="controlstyle">
<a href="#fontsize-1"><img src="images1/A-.png" title="Decrease Font Size" alt="Decrease Font Size"> </a>
<a href="javascript:mytextsizer.setFontLevel(0)"><img src="images1/A.png" alt="Actual Font Size" title="Actual Font Size"></a>
<a href="javascript:mytextsizer.setFontLevel(1)"><img src="images1/increase.png" alt="Increase Font Size" title="Increase Font Size"></a>


</div>
 </div><div style="float:right;width:100%;">
<a href="#content-section" title="Skip to Main Content" style="font-weight:bold;font-size:12px;" >Skip to Main Content | </a>
    <a href="gadDynamic/screenreader.aspx" title="Screen Reader Access" style="font-weight:bold;font-size:12px;" >Screen Reader Access</a>
    </div>
 </div>



		            
              

</div>



<%--<div class="emergency-contact1">

<a href="leftMenu/Telephone_Directory.aspx" data-toggle="tooltip" title="Telephone directory!"><img src="images1/tender.png" height="42px" width="40px"></a> 
<a href="leftMenu/OrderCirculer.aspx" data-toggle="tooltip" title="Orders!"><img src="images1/orders.jpg" height="42px" width="40px"></a> 
<a href="#" data-toggle="tooltip" title="Gallery!"><img src="images1/gallery.png" height="42px" width="40px"></a> 
<a href="leftMenu/variousawardsnew.aspx" data-toggle="tooltip" title="Awards!"><img src="images1/awards.png" height="40px" width="40px"></a>

</div>--%>
 </div>
                                    


</div>
</div>
</div>

<div class="col-xs-3 col-sm-2">
</div>
</div>
</div>

<div class="cd-main-header">
<a href="#0" class="cd-nav-trigger">Menu<span></span></a>
<nav class="cd-nav">
			<ul class="cd-top-nav">
				<li><a href='gadDynamic/oldCS.aspx'>Former Chief Secretaries</a></li>
				<li><a href="gadDynamic/FormerAdmSecretaries.aspx"> Former Adm. Secretaries</a>
</li>
<li><a href="gadDynamic/jk_rti_act.aspx">Right To Information</a>
</li>
<li><a href="gadDynamic/LtGoverneraddressess.aspx">Lieutenant Governor's Address</a>
</li>
<li><a href="gadDynamic/jKSG.aspx">Public Service Guarantee</a>
</li>
<%--<li><a href="PDF/rdfgad.pdf">R F D</a></li>--%>

<li><a  href="gadDynamic/Publication.aspx">Publication</a>
</li>
 <li><a target="_blank" href="https://drive.google.com/file/d/1Gkzbu3lpiuC_d2FZ-Nv9JLDxcVZ6nmzc/view?usp=sharing">Download App</a>
</li>

				
			</ul>
            
		</nav>
        </div>

</header>
        <div id="content-section">
            <section class="main-wrapper">
    <form id="form1" runat="server">  
              <div class="container">
            <div class="row">
                
<div>

</div>



<div id="ctl00_ctl00_mainCp_div1" class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
    <main class="cd-main-content">    
<nav class="cd-side-nav">
			<ul>
        
        <li><a href="leftMenu/Organization_Chart.aspx" ><i class="fa fa-angle-right m-r-5"></i>Organization Chart</a></li>
        
        <li><a href="leftMenu/OrderCirculer.aspx" ><i class="fa fa-angle-right m-r-5"></i>Orders</a></li>
        
        <li><a href="leftMenu/StatutoryOrders.aspx" ><i class="fa fa-angle-right m-r-5"></i>Statutory Rules</a></li>
        
        <li><a href="leftMenu/Subjects_Assigned_to_GAD.aspx" ><i class="fa fa-angle-right m-r-5"></i>Subjects Assigned to GAD</a></li>
        
        <li><a href="leftMenu/Administrative_Departments.aspx" ><i class="fa fa-angle-right m-r-5"></i>Administrative Departments</a></li>
        
        <li><a href="leftMenu/CivilList.aspx" ><i class="fa fa-angle-right m-r-5"></i>Civil List-IAS</a></li>
        
        <li><a href="leftMenu/KAS_Officers.aspx" ><i class="fa fa-angle-right m-r-5"></i>JKAS</a></li>

		<li><a href="leftMenu/CimmonPoolOfficer.aspx" ><i class="fa fa-angle-right m-r-5"></i>Common Pool Officers</a></li>
        
        <li><a href="leftMenu/pvtSectt.aspx?offType=U" ><i class="fa fa-angle-right m-r-5"></i>Under/Private Secretaries</a></li>
        
        <li><a href="leftMenu/Officers_GAD.aspx" ><i class="fa fa-angle-right m-r-5"></i>Officers in GAD</a></li>
        
        <li><a href="leftMenu/jrStaff.aspx?offType=SO" ><i class="fa fa-angle-right m-r-5"></i>SOs/HAs/SAs/JAs/Orderlies</a></li>
        
         <li><a href="leftMenu/offPropStatement.aspx" ><i class="fa fa-angle-right m-r-5"></i>Property Statement Archive</a></li>
         
        <li><a href="leftMenu/minCouncil.aspx" ><i class="fa fa-angle-right m-r-5"></i>Council of Ministers</a></li>
        
        <li><a href="leftMenu/AdviserToGovnment.aspx" ><i class="fa fa-angle-right m-r-5"></i>Advisors</a></li>
        
        <li><a href="leftMenu/Proseuction_sanction.aspx" ><i class="fa fa-angle-right m-r-5"></i>Accord of Prosecution Sanction</a></li>
        
        <li><a href="leftMenu/Divisional_DyCommissioners.aspx" ><i class="fa fa-angle-right m-r-5"></i>Divisional/Deputy Commissioners</a></li>
        
         <li><a href="leftMenu/variousawardsnew.aspx" ><i class="fa fa-angle-right m-r-5"></i>Recipients of various Awards</a></li>
        
        <li><a href="leftMenu/Telephone_Directory.aspx" ><i class="fa fa-angle-right m-r-5"></i>Telephone Directory</a></li>
        
        <li><a href="leftMenu/Email_Directory.aspx?depType=D" ><i class="fa fa-angle-right m-r-5"></i>Email Directory</a></li>
        
        <li><a href="leftMenu/Useful_Links.aspx" ><i class="fa fa-angle-right m-r-5"></i>Useful Links</a></li>   

        <li><a href="leftMenu/Form.aspx" ><i class="fa fa-angle-right m-r-5"></i>Forms</a></li>
            
             <li> <a style="width:49%;margin-right:1%;background:none;padding:0px;float:left;" href="https://mail.nic.in/mail/mauth" target="_blank"><img  src="images/mailnic.JPG" alt="" /></a>  
                <a style="background:none;width:47%;padding:0px;float:left;" href ="http://www.india.gov.in" target="_blank"><img src="images/indiagov.JPG"  alt="" /></a> </li>

            
            
            <%--   <li> <a href="#">
               <table>
               <tr>
                <td colspan="3"><center><a href="#" ><h4> Helpline Number for Registration</h4></a></center></td>                
               </tr>
                <tr>
                <td><h5><b>0194-2506144<br />0194-2506111</b></h5></td>
                <td><h5><b>0194-2506115<br />0194-2506112</h5></b></td>
                <td valign="top"><h5><b>0194-2506102</b></h5></td>
               </tr>
                
               
               </table>
               </a>
               </li>--%>
               



        
</ul>
    
    
   
  
</nav>
</main>
</div>


<div class='col-lg-6 col-sm-6 col-md-6 col-xs-12' >
<div class="ticker-box">
<div class="ticker-title">Flash</div>
<div class="ticker-msg">
<marquee scrollamount="2" behavior="scroll" scrolldelay="5"  onmouseover="this.stop();" onMouseOut="this.start();">
<p style="margin-top:-7px;"></p>
<asp:Literal id="litFlash" runat="server" /></marquee>
</div>
</div>
    


<div class="ticker-box1">
<div class="ticker-title">Public Notice</div>
<div class="ticker-msg1">
<p style="margin-top:0px;"><a href="https://jkgad.nic.in/common/ViewEventPDF.aspx?ID=7249" target=_blank>General Public can reach out to the Administrative Secretaries and other officers of the departments by registering their request through these telephone numbers  0194-2506144/ 0194-2506115/ 0194-2506102/ 0194-2506111/ 0194-2506112 between 10.A.M to 5.00 P. M. on each working day</a></p>
</div>
</div>
     
<div class="ticker-box1">

<div class="swiper-container mb20 swiper-container-horizontal">
<!--<img src="images1/image1.gif" width="1000px"> -->
<img src="images1/mainimage12.gif" width="100%" height="100%">
<div class="swiper-wrapper" style="transform: translate3d(-3780px, 0px, 0px); transition-duration: 0ms;">
</div>
</div>
</div>

<div class="main-content" id="PrintArea">
<!--<div class="head">
</div>-->

<div class="main-content" id="PrintArea">
<div class="head">
   
</div>
<div class="text-justify">
<div class="row mb20">
 
 
 <div class="panel-warpper mb20">

<asp:datagrid id="dgActRule" PagerStyle-Mode ="NextPrev" PagerStyle-NextPageText ="Next" PagerStyle-PrevPageText ="Previous" Width="100%" Runat="server"  

AutoGenerateColumns="False" AlternatingItemStyle-BackColor="#ABC254" ForeColor="White" CellPadding="4" PageSize ="5"  GridLines="None"
 Font-Size="13px" Font-Names ="Helvetica Neue, Helvetica, Arial, sans-serif" ShowFooter="true" style="text-align:justify;" >
                                            <AlternatingItemStyle BackColor="White" />
                                            <HeaderStyle ForeColor="White" BackColor="#4180B8" Font-Names="Verdana" Font-Bold="True" Font-Size="10pt" HorizontalAlign="Left" />
                                            <Columns>
                                                <asp:TemplateColumn HeaderText="Date/Type">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" ><%#DataBinder.Eval(Container.DataItem, "Date")%></asp:Label>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        <span style="padding:0px !important;"><a id="Link30" href="gadDynamic/ArchiveOrders.aspx" style="color:#fff;" >Archive</a></span>
                                                    </FooterTemplate>
                                                   
                                           
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn HeaderText="Order Subject">
                                                    <ItemTemplate>
                                                        <a onClick="javascript:window.open('common/showOrder.aspx?actCode=<%# DataBinder.Eval(Container, "DataItem.link")%>','blank','toolbar=no,top=0,left=0,scrollbars=yes,resizable=yes')" href = "#">
                                                            <span class="itemLink"><%#DataBinder.Eval(Container, "DataItem.gordSub")%></span>
                                                        </a>
                                                        <%--<asp:LinkButton ID="lnlAct"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "gordSub")%>' CommandArgument='<%# DataBinder.Eval(Container.DataItem, "link") %>' CommandName="show" OnClientClick="SetTarget();" />--%>
                                                    </ItemTemplate>
                                                    <FooterTemplate >
                                                        <span style="padding:0px !important;"><a id="Link31" href="gadDynamic/SearchOrder.aspx" style="color:#fff;">Search Orders</a></span>
                                                    </FooterTemplate>
                                                </asp:TemplateColumn>
                                                <%--<asp:TemplateColumn HeaderText="Circular/Sro" HeaderStyle-CssClass="hidecol" ItemStyle-CssClass="hidecol">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" ><%#DataBinder.Eval(Container.DataItem, "oType")%></asp:Label>
                                                    </ItemTemplate>
                                                     </asp:TemplateColumn>--%>
                                            </Columns>
 

                                                    
                                               
                                                      
                                 
                                       


 <PagerStyle HorizontalAlign="Right" BackColor="#4180B8" ForeColor="white" Font-Size="Smaller" NextPageText="| Next" PrevPageText="Previous |" />
                                            <FooterStyle CssClass="footerclass" Font-Bold="True" ForeColor="White"  HorizontalAlign="Right"  />
                                            <EditItemStyle BackColor="#2461BF" />
                                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#fff" />

<ItemStyle BackColor="#EFF3FB" ForeColor="#4180B8" />
                                        </asp:datagrid>
<div style="background:#4180B8;margin-top:-23px;margin-left: 0.5%;width:90%; font-size:10px;" >
     <asp:Label ID="lbllastupdate" runat="server" ForeColor="white"  ></asp:Label></div>
</div>


</div>
</div>
</div>

</div>
</div>



<div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">

<%-- <div class="usefull-link mb20">
    <a href="leftMenu/OrderCirculerTran.aspx" class="bg-gold"><i class="fa fa-angle-right m-r-5"></i>List of Important Orders in Hindi/Urdu</a> 
</div>
--%>

    <div >
<a href="https://janbhagidari.jk.gov.in/Pages/Home" target="_blank" ><img src="images/Janbaghidari.png" /></a> 
</div>
<div >
<a href="https://landrecords.jk.gov.in/" target="_blank"><img src="images/LandRecord.png" /></a> 
</div>
    <div class="usefull-link mb20">
<a href="leftMenu/apply_now.aspx" class="bg-gold"><i class="fa fa-angle-right m-r-5"></i>Vacancy Notifications in GoI</a> 
</div>
<div class="usefull-link mb20"> 
    <a href="PDF/Citizen_Chater.pdf"   target="_blank"  class="bg-gold" ><i class="fa fa-angle-right m-r-5"></i>Citizen Charter</a></div>

    <div class="usefull-link mb20">  
    <a href="http://basreports.attendance.gov.in/unibasreports/index.php?redirectwith=jandk"   target="_blank" class="bg-gold"><i class="fa fa-angle-right m-r-5"></i>
    BAS Report for Civil Secretariat</a>
    </div>
    <div class="usefull-link mb20"> 
    <a href="https://www.pan.utiitsl.com/PAN/index.jsp#one"   target="_blank"  class="bg-gold" ><i class="fa fa-angle-right m-r-5"></i>
    Apply Online PAN Card</a></div>
    





<div class="message-warpper">
<h1>CALENDER</h1>
<div class="message-thumbs">
 
            <div>
                <asp:Calendar id="calSchedule"  OnDayRender="calSchedule_DayRender" Runat="server" BackColor="White" BorderColor="White" BorderWidth="1px"  Font-Size="11pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="100%" FirstDayOfWeek="Monday" OnVisibleMonthChanged="calSchedule_VisibleMonthChanged">
                    <OtherMonthDayStyle ForeColor="Gray" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#4180B8" VerticalAlign="Bottom"    />
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="0px" Font-Bold="True" Font-Size="14pt" ForeColor="#4180B8" />
                    <SelectedDayStyle Font-Bold="False" 
                        Font-Italic="False" BackColor="wheat" Font-Underline="true" />
                    <TodayDayStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" />
                </asp:Calendar>
                <asp:FormView id="frmSchedule" AllowPaging="True" DataKeyNames="EntryDate" DataSourceID="srcSchedule" Runat="server"  Width="100%" >
                    <ItemTemplate>
                        <asp:Label ID="lblHoliDate" runat="server" Text='<%#Eval("EntryDate", "{0:dd-MMM}")%>' Font-Size=9 Font-Bold="true" />
                        <asp:Label ID="lblHoliName" runat="server" Text='<%# Eval("Entry") %>' Font-Italic="true" Font-Size=9 />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource id="srcSchedule" ConnectionString="<%$ ConnectionStrings:gadCONN %>" SelectCommand="SELECT EntryDate, Entry, type FROM Schedule WHERE EntryDate=@EntryDate " Runat="server">
                    <SelectParameters>
                        <asp:ControlParameter Name="EntryDate" ControlID="calSchedule" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource id="srcCalendar" ConnectionString="<%$ ConnectionStrings:gadCONN %>" SelectCommand="SELECT EntryDate, type FROM Schedule" Runat="server" />
            </div>
        
</div>
<div class="message-box"></span> </div>
</div>

 
<div class="usefull-link mb20">
</div>


<div class="left-nav-bar mb20">
</div>
<div class="events-warpper mb20">

<h1>Notice Board <span><a href="leftMenu/Read_more.aspx">Read More</a></span></h1>
<div class="events-box">
<div class="marquee-vert" data-direction="up" data-startvisible="true" data-pauseonhover="true" data-pauseoncycle="true">

<marquee scrollamount="2" behavior="scroll"  direction="UP" scrolldelay="3"  onmouseover="this.stop();" onMouseOut="this.start();">
   <asp:DataGrid ID="EventGrid" ShowFooter="false" runat="server" AutoGenerateColumns="False" ForeColor="#084B75" CellPadding="4" PageSize ="5"
   
   
   
    GridLines="None" Font-Size="13px" ShowHeader="False" Width="100%" AllowPaging="false">
                                                                                                                <Columns>
                                                                <asp:TemplateColumn HeaderText="Order Subject">
                                                                    <ItemTemplate>
                                                                     <div style='display: <%#Convert.ToString(get_Display(Eval("pdf")))%>'>

                                                                        <a onClick="javascript:window.open('common/ViewEventPDF.aspx?ID=<%# DataBinder.Eval(Container, "DataItem.ID")%>','blank','toolbar=no,top=0,left=0,scrollbars=yes,resizable=yes')" href = "#">
                                                                            <span class="itemLink"><%#DataBinder.Eval(Container, "DataItem.Subject")%></span>
                                                                        </a>
                                                                        </div>
                                                                        <div style='display: <%#Convert.ToString(get_Display1(Eval("pdf")))%>'>

                                                                 <b><span class="itemLink"><%#DataBinder.Eval(Container, "DataItem.Subject")%></span></b>
                                                                      </div> 

                                                                        <%--<asp:LinkButton ID="lnlActEvents" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "ID") %>' CommandName="view" Font-Underline="false" OnClientClick="SetTarget()" Text='<%#DataBinder.Eval(Container.DataItem, "Subject")%>' />--%>
                                                                    </ItemTemplate>

                                                                </asp:TemplateColumn>
                                                            </Columns>

                                                            <HeaderStyle BackColor="#084B75" Font-Bold="True" ForeColor="White" />
                                                        </asp:DataGrid>
                                                        </marquee>

</div>


</div>
</div>
</div>
</div>


</div>
        </div>
        </form> </section> </div>
        <footer>
<div class="copyright">
            <div class="container">
               
               <p>Website Designed, Developed and Hosted by National Informatics Centre, Jammu &amp; Kashmir
<br>
                Content Provided and Maintained by General Administration Department, Government of Jammu &amp; Kashmir
 <div class="fontsmall"> Best Viewed in Crome and Firefox </div></p>
           
            <table class="visitortale" >
                                    <tr >
                                        <td align="center" valign="middle" style="font-family: Verdana; font-size: 8pt; font-weight: bold;border: 1px none #ddd;">
                                            You are Visitor No : 
 
                                            <asp:Image ID="eigPOS"  runat="server" Height="15px" Width="15px" />                                         
                                            
                                            <asp:Image ID="sevPOS" runat="server" Height="15px" Width="15px" />
                                            <asp:Image ID="sixPOS" runat="server" Height="15px" Width="15px" />
                                            <asp:Image ID="fivPOS" runat="server" Height="15px" Width="15px" />
                                            <asp:Image ID="fouPOS" runat="server" Height="15px" Width="15px" />
                                            <asp:Image ID="thrPOS" runat="server" Height="15px" Width="15px" />
                                            <asp:Image ID="secPOS" runat="server" Height="15px" Width="15px" />
                                            <asp:Image ID="firPOS" runat="server" Height="15px" Width="15px" />
                                        </td>
                                    </tr>
                                </table>
                                 </div>
        </div>

        
      

        
        
    </footer>
        <script src='jss/bootstrap.min.js'></script>
        <script type='text/javascript' src='jss/bootstrap-datetimepicker.js' charset='UTF-8'></script>
        <script src='jss/script.js'></script>
        <script src='jss/swiper.min.js'></script>
        <script src='jss/jquery.marquee.js' type='text/javascript'></script>
        <script src='jss/custom.js'></script>
        <script src='jss/Validation.js'></script>
        <script src="js/jquery-2.1.4.js"></script>
        <script src="js/jquery.menu-aim.js"></script>
        <script src="js/main.js"></script>
        <!-- Resource jQuery -->
        <style id="antiClickjack">
            body
            {
                display: none !important;
            }
        </style>
        <script type="text/javascript">
            if (self === top) {
                var antiClickjack = document.getElementById("antiClickjack");
                antiClickjack.parentNode.removeChild(antiClickjack);
            } else {
                top.location = self.location;
            }
        </script>
        <link href="photoswipe.css?v=4.1.1-1.0.4" rel="stylesheet" />
        <link href="default-skin/default-skin.css?v=4.1.1-1.0.4" rel="stylesheet" />
        <script src="jss/photoswipe.min.js?v=4.1.1-1.0.4"></script>
        <script src="jss/photoswipe-ui-default.min.js?v=4.1.1-1.0.4"></script>
        <div id="gallery" class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="pswp__bg">
            </div>
            <div class="pswp__scroll-wrap">
                <div class="pswp__container">
                    <div class="pswp__item">
                    </div>
                    <div class="pswp__item">
                    </div>
                    <div class="pswp__item">
                    </div>
                </div>
                <div class="pswp__ui pswp__ui--hidden">
                    <div class="pswp__top-bar">
                        <div class="pswp__counter">
                        </div>
                        <a class="pswp__button pswp__button--close" title="Close (Esc)"></a><a class="pswp__button pswp__button--share"
                            title="Share"></a><a class="pswp__button pswp__button--fs" title="Toggle fullscreen">
                            </a><a class="pswp__button pswp__button--zoom" title="Zoom in/out"></a>
                        <div class="pswp__preloader">
                            <div class="pswp__preloader__icn">
                                <div class="pswp__preloader__cut">
                                    <div class="pswp__preloader__donut">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="pswp__loading-indicator"><div class="pswp__loading-indicator__line"></div></div> -->
                    <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                        <div class="pswp__share-tooltip">
                            <!-- <a href="#" class="pswp__share--facebook"></a>
                                  <a href="#" class="pswp__share--twitter"></a>
                                  <a href="#" class="pswp__share--pinterest"></a>
                                  <a href="#" download class="pswp__share--download"></a> -->
                        </div>
                    </div>
                    <a class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                    </a><a class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                    </a>
                    <div class="pswp__caption">
                        <div class="pswp__caption__center">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
        <div>
      <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <a href="#" target="_blank">   <img src="images/Banner.gif" /></a>
        </div>

    </div>

</div>
    </body>
    <script>
        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        span.onclick = function () {
            modal.style.display = "none";
        }

        $(window).on('load', function () {
            //$('#myModal').modal('show');
            modal.style.display = "block";
        });


        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

</html>
