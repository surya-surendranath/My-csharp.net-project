<%@ Page Language="VB" AutoEventWireup="false" CodeFile="addresult.aspx.vb" Inherits="Register" %>
<%--<%
    Response.Expires = -1
    Response.ExpiresAbsolute = DateAdd(DateInterval.Day, -1, Now)
    Response.AddHeader("pragma", "no-cache")
    Response.AddHeader("cache-control", "private")
    Response.CacheControl = "no-cache"
    Response.Buffer = True
    Response.Clear()
%>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="stylesheet" type="text/css" media="all" href="../jsdatepick-calendar/jsDatePick_ltr.min.css" />

    <script type="text/javascript" src="../jsdatepick-calendar/jsDatePick.min.1.3.js"></script>

    <script type="text/javascript">
	window.onload = function(){
		new JsDatePick({
			useMode:2,
			target:"textbox5",
			dateFormat:"%d-%M-%Y"
			
		}
		);
		
	};
	
	
	
    </script>
    

    <title > Online Result:: </title>
    
      <link href="../stylesheet_admin.css" rel="stylesheet" type="text/css" />
       <link type="text/css" rel="stylesheet" href="../css/style.css" />
       <script src="../Scripts/jquery-1.2.6.js" type="text/javascript"></script>
        <script src="../Scripts/jquery.MultiFile.js" type="text/javascript"></script>
     <script language = "Javascript">
     
     /**
 * DHTML phone number validation script. 
 */

// Declaring required variables
var digits = "0123456789";
// non-digit characters which are allowed in phone numbers
var phoneNumberDelimiters = "()- ";
// characters which are allowed in international phone numbers
// (a leading + is OK)
var validWorldPhoneChars = phoneNumberDelimiters + "+";
// Minimum no of digits in an international phone no.
var minDigitsInIPhoneNumber = 10;

function isInteger(s)
{   var i;
    for (i = 0; i < s.length; i++)
    {   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}
function trim(s)
{   var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not a whitespace, append to returnString.
    for (i = 0; i < s.length; i++)
    {   
        // Check that current character isn't whitespace.
        var c = s.charAt(i);
        if (c != " ") returnString += c;
    }
    return returnString;
}
function stripCharsInBag(s, bag)
{   var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++)
    {   
        // Check that current character isn't whitespace.
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function checkInternationalPhone(strPhone){
var bracket=3
strPhone=trim(strPhone)
if(strPhone.indexOf("+")>1) return false
if(strPhone.indexOf("-")!=-1)bracket=bracket+1
if(strPhone.indexOf("(")!=-1 && strPhone.indexOf("(")>bracket)return false
var brchr=strPhone.indexOf("(")
if(strPhone.indexOf("(")!=-1 && strPhone.charAt(brchr+2)!=")")return false
if(strPhone.indexOf("(")==-1 && strPhone.indexOf(")")!=-1)return false
s=stripCharsInBag(strPhone,validWorldPhoneChars);
return (isInteger(s) && s.length >= minDigitsInIPhoneNumber);
}
     
/**
 * DHTML email validation script.
 */

function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true					
	}

function ValidateForm(){
	var name=document.form1.textbox2
	var City=document.form1.textbox4
	var City4=document.form1.textbox5
	var City5=document.form1.textbox8
	var City8=document.form1.textbox9
	var City9=document.form1.textbox9
	
	var Country=document.form1.txtStudentName
	var Phone=document.form1.txtGrade
		var cprofile=document.form1.DropDownList1
		
	
	if (cprofile.value=="---Select---"){
		alert("Please Select Progarm :")
		cprofile.focus()
		return false
	}
	if ((name.value==null)||(name.value=="")){
		alert("Please Enter Roll No/Regn. No")
		name.focus()
		return false
	}

if ((City.value==null)||(City.value=="")){
		alert("Please Enter Name Of Students")
		City.focus()
		return false
	}
	if ((City4.value==null)||(City4.value=="")){
		alert("Please Enter DOB")
		City4.focus()
		return false
	}
	if ((City5.value==null)||(City5.value=="")){
		alert("Please Enter Father Name")
		City5.focus()
		return false
	}
	if ((City8.value==null)||(City8.value=="")){
		alert("Please Enter Mothers Name")
		City8s.focus()
		return false
	}
       if ((Country.value==null)||(Country.value=="")){
		alert("Please Enter your Country")
		Country.focus()
		return false
	}
       if ((Phone.value==null)||(Phone.value=="")){
		alert("Please Enter your Phone No")
		Phone.focus()
		return false
	}
        if (checkInternationalPhone(Phone.value)==false){
		alert("Please Enter a Valid Phone Number")
		Phone.value=""
		Phone.focus()
		return false
	}
       
	if ((emailID.value==null)||(emailID.value=="")){
		alert("Please Enter your Email ID")
		emailID.focus()
		return false
	}
	if (echeck(emailID.value)==false){
		emailID.value=""
		emailID.focus()
		return false
	}
	return true
 }
</script>
   
    <style type="text/css">
        .style1
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 11px;
            background-color: #F5f5f5;
            padding-left: 10px;
            color: #000000;
            text-align: left;
            width: 25%;
            height: 22px;
        }
        .style2
        {
            background-color: #F5f5f5;
            padding-left: 4px;
            text-align: left;
            width: 25%;
            height: 22px;
        }
        </style>
   
</head>
<body>

    <form id="form1" runat="server" enctype="multipart/form-data">
        <table width="100%" style="height: 599px;" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top" style="height: 1px;">
                   <!--#include file="inc-top.aspx"-->
                </td>
            </tr>
            <tr>
                <td valign="top" class="table_align">
                    <br />
                    <br />
                    <table   width="65%" border="0" cellspacing="2" cellpadding="2" align="center">
                        <tr>
                            <td style="width: 100%;">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td style="width: 28px" align="right">
                                            <img alt="" src="../images/table_top_left-2.png" width="28" height="45" /></td>
                                        <td style="width: 100%; background-image: url(../images/table_top_bg.png)" align="center"
                                            class="login_heading">
                                            <asp:Label ID="labPageTitle" runat="server" 
                                                Text="Student Detail"></asp:Label></td>
                                        <td style="width: 28px;" align="left">
                                            <img alt="" src="../images/table_top_right-2.png" width="28" height="45" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <table width="100%" border="0" style="text-align: center;" cellpadding="1" cellspacing="1">
                                    <tr>
                                        <td colspan="4" class="links">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="labSelectResult0" runat="server" Text="Prog. Code"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor" colspan="3">
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="lable_text" 
                                                Height="16px" Width="171px" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text">
                                            <asp:Label ID="labSelectResult" runat="server" Text="Roll No/Regn. No"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="textbox2" runat="server" Height="19px" Width="138px" 
                                                CssClass="textbox_text" MaxLength="50"></asp:TextBox></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:Label ID="labSelectResult1" runat="server" Text="Course Name" 
                                                CssClass="lable_text"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="textbox3" runat="server" Height="18px" Width="228px" 
                                                CssClass="textbox_text" MaxLength="50"></asp:TextBox></td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text">
                                            <asp:Label ID="labSelectResult2" runat="server" Text="Name Of Student"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="textbox4" runat="server" Height="20px" Width="279px" 
                                                CssClass="textbox_text" MaxLength="50"></asp:TextBox></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:Label ID="labSelectResult3" runat="server" Text="DOB" 
                                                CssClass="lable_text"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="textbox5" runat="server" Height="19px" Width="108px" 
                                                CssClass="textbox_text" MaxLength="50"></asp:TextBox></td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text">
                                            <asp:Label ID="labSelectResult8" runat="server" Text="Batch"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:dropdownlist id="drpBirthYear" runat="server">
 <asp:ListItem Value="1950">1950</asp:ListItem>
 <asp:ListItem Value="1951">1951</asp:ListItem>
 <asp:ListItem Value="1952">1952</asp:ListItem>
 <asp:ListItem Value="1953">1953</asp:ListItem>
 <asp:ListItem Value="1954">1954</asp:ListItem>
 <asp:ListItem Value="1955">1955</asp:ListItem>
 <asp:ListItem Value="1956">1956</asp:ListItem>
 <asp:ListItem Value="1957">1957</asp:ListItem>
 <asp:ListItem Value="1958">1958</asp:ListItem>
 <asp:ListItem Value="1959">1959</asp:ListItem>
 <asp:ListItem Value="1960">1960</asp:ListItem>
 <asp:ListItem Value="1961">1961</asp:ListItem>
 <asp:ListItem Value="1962">1962</asp:ListItem>
 <asp:ListItem Value="1963">1963</asp:ListItem>
 <asp:ListItem Value="1964">1964</asp:ListItem>
 <asp:ListItem Value="1965">1965</asp:ListItem>
 <asp:ListItem Value="1966">1966</asp:ListItem>
 <asp:ListItem Value="1967">1967</asp:ListItem>
 <asp:ListItem Value="1968">1968</asp:ListItem>
 <asp:ListItem Value="1969">1969</asp:ListItem>
 <asp:ListItem Value="1970">1970</asp:ListItem>
 <asp:ListItem Value="1971">1971</asp:ListItem>
 <asp:ListItem Value="1972">1972</asp:ListItem>
 <asp:ListItem Value="1973">1973</asp:ListItem>
 <asp:ListItem Value="1974">1974</asp:ListItem>
 <asp:ListItem Value="1975">1975</asp:ListItem>
 <asp:ListItem Value="1976">1976</asp:ListItem>
 <asp:ListItem Value="1977">1977</asp:ListItem>
 <asp:ListItem Value="1978">1978</asp:ListItem>
 <asp:ListItem Value="1979">1979</asp:ListItem>
 <asp:ListItem Value="1980">1980</asp:ListItem>
 <asp:ListItem Value="1981">1981</asp:ListItem>
 <asp:ListItem Value="1982">1982</asp:ListItem>
 <asp:ListItem Value="1983">1983</asp:ListItem>
 <asp:ListItem Value="1984">1984</asp:ListItem>
 <asp:ListItem Value="1985">1985</asp:ListItem>
 <asp:ListItem Value="1986">1986</asp:ListItem>
 <asp:ListItem Value="1987">1987</asp:ListItem>
 <asp:ListItem Value="1988">1988</asp:ListItem>
 <asp:ListItem Value="1989">1989</asp:ListItem>
 <asp:ListItem Value="1990">1990</asp:ListItem>
 <asp:ListItem Value="1991">1991</asp:ListItem>
 <asp:ListItem Value="1992">1992</asp:ListItem>
 <asp:ListItem Value="1993">1993</asp:ListItem>
 <asp:ListItem Value="1994">1994</asp:ListItem>
 <asp:ListItem Value="1995">1995</asp:ListItem>
 
 
 
 <asp:ListItem Value="1996">1996</asp:ListItem>
 <asp:ListItem Value="1997">1997</asp:ListItem>
 <asp:ListItem Value="1998">1998</asp:ListItem>
 <asp:ListItem Value="1999">1999</asp:ListItem>
 <asp:ListItem Value="2000">2000</asp:ListItem>
 <asp:ListItem Value="2001">2001</asp:ListItem>
 <asp:ListItem Value="2002">2002</asp:ListItem>
 <asp:ListItem Value="2003">2003</asp:ListItem>
 <asp:ListItem Value="2004">2004</asp:ListItem>
 <asp:ListItem Value="2005"  Selected="True">2005</asp:ListItem>
 <asp:ListItem Value="2006">2006</asp:ListItem>
 <asp:ListItem Value="2007">2007</asp:ListItem>
 <asp:ListItem Value="2008">2008</asp:ListItem>
 <asp:ListItem Value="2009">2009</asp:ListItem>
 <asp:ListItem Value="2010">2010</asp:ListItem>
 
 <asp:ListItem Value="2011">2011</asp:ListItem>
 <asp:ListItem Value="2012">2012</asp:ListItem>
 <asp:ListItem Value="2013">2013</asp:ListItem>
 <asp:ListItem Value="2014">2014</asp:ListItem>
 <asp:ListItem Value="2015">2015</asp:ListItem>
 <asp:ListItem Value="2016">2016</asp:ListItem>
 <asp:ListItem Value="2017">2017</asp:ListItem>
 <asp:ListItem Value="2018">2018</asp:ListItem>
 <asp:ListItem Value="2019">2019</asp:ListItem>
 <asp:ListItem Value="2020">2020</asp:ListItem>
 
 <asp:ListItem Value="2021">2021</asp:ListItem>
 <asp:ListItem Value="2022">2022</asp:ListItem>
 <asp:ListItem Value="2023">2023</asp:ListItem>
 <asp:ListItem Value="2024">2024</asp:ListItem>
 <asp:ListItem Value="2025">2025</asp:ListItem>
 <asp:ListItem Value="2026">2026</asp:ListItem>
 <asp:ListItem Value="2027">2027</asp:ListItem>
 <asp:ListItem Value="2028">2028</asp:ListItem>
 <asp:ListItem Value="2029">2029</asp:ListItem>
 <asp:ListItem Value="2030">2030</asp:ListItem>
 
 <asp:ListItem Value="2031">2031</asp:ListItem>
 <asp:ListItem Value="2032">2032</asp:ListItem>
 <asp:ListItem Value="2033">2033</asp:ListItem>
 <asp:ListItem Value="2034">2034</asp:ListItem>
 <asp:ListItem Value="2035">2035</asp:ListItem>
 <asp:ListItem Value="2036">2036</asp:ListItem>
 <asp:ListItem Value="2037">2037</asp:ListItem>
 <asp:ListItem Value="2038">2038</asp:ListItem>
 <asp:ListItem Value="2039">2039</asp:ListItem>
 <asp:ListItem Value="2040">2040</asp:ListItem>

 <asp:ListItem Value="2041">2041</asp:ListItem>
 <asp:ListItem Value="2042">2042</asp:ListItem>
 <asp:ListItem Value="2043">2043</asp:ListItem>
 <asp:ListItem Value="2044">2044</asp:ListItem>
 <asp:ListItem Value="2045">2045</asp:ListItem>
 <asp:ListItem Value="2046">2046</asp:ListItem>
 <asp:ListItem Value="2047">2047</asp:ListItem>
 <asp:ListItem Value="2048">2048</asp:ListItem>
 <asp:ListItem Value="2049">2049</asp:ListItem>
 <asp:ListItem Value="2050">2050</asp:ListItem>
 
 
</asp:dropdownlist>
                                            
                                            
                                            
                                            <asp:dropdownlist id="drpBirthYear0" runat="server">
 <asp:ListItem Value="1950">1950</asp:ListItem>
 <asp:ListItem Value="1951">1951</asp:ListItem>
 <asp:ListItem Value="1952">1952</asp:ListItem>
 <asp:ListItem Value="1953">1953</asp:ListItem>
 <asp:ListItem Value="1954">1954</asp:ListItem>
 <asp:ListItem Value="1955">1955</asp:ListItem>
 <asp:ListItem Value="1956">1956</asp:ListItem>
 <asp:ListItem Value="1957">1957</asp:ListItem>
 <asp:ListItem Value="1958">1958</asp:ListItem>
 <asp:ListItem Value="1959">1959</asp:ListItem>
 <asp:ListItem Value="1960">1960</asp:ListItem>
 <asp:ListItem Value="1961">1961</asp:ListItem>
 <asp:ListItem Value="1962">1962</asp:ListItem>
 <asp:ListItem Value="1963">1963</asp:ListItem>
 <asp:ListItem Value="1964">1964</asp:ListItem>
 <asp:ListItem Value="1965">1965</asp:ListItem>
 <asp:ListItem Value="1966">1966</asp:ListItem>
 <asp:ListItem Value="1967">1967</asp:ListItem>
 <asp:ListItem Value="1968">1968</asp:ListItem>
 <asp:ListItem Value="1969">1969</asp:ListItem>
 <asp:ListItem Value="1970">1970</asp:ListItem>
 <asp:ListItem Value="1971">1971</asp:ListItem>
 <asp:ListItem Value="1972">1972</asp:ListItem>
 <asp:ListItem Value="1973">1973</asp:ListItem>
 <asp:ListItem Value="1974">1974</asp:ListItem>
 <asp:ListItem Value="1975">1975</asp:ListItem>
 <asp:ListItem Value="1976">1976</asp:ListItem>
 <asp:ListItem Value="1977">1977</asp:ListItem>
 <asp:ListItem Value="1978">1978</asp:ListItem>
 <asp:ListItem Value="1979">1979</asp:ListItem>
 <asp:ListItem Value="1980">1980</asp:ListItem>
 <asp:ListItem Value="1981">1981</asp:ListItem>
 <asp:ListItem Value="1982">1982</asp:ListItem>
 <asp:ListItem Value="1983">1983</asp:ListItem>
 <asp:ListItem Value="1984">1984</asp:ListItem>
 <asp:ListItem Value="1985">1985</asp:ListItem>
 <asp:ListItem Value="1986">1986</asp:ListItem>
 <asp:ListItem Value="1987">1987</asp:ListItem>
 <asp:ListItem Value="1988">1988</asp:ListItem>
 <asp:ListItem Value="1989">1989</asp:ListItem>
 <asp:ListItem Value="1990">1990</asp:ListItem>
 <asp:ListItem Value="1991">1991</asp:ListItem>
 <asp:ListItem Value="1992">1992</asp:ListItem>
 <asp:ListItem Value="1993">1993</asp:ListItem>
 <asp:ListItem Value="1994">1994</asp:ListItem>
 <asp:ListItem Value="1995">1995</asp:ListItem>
 
 
 
 <asp:ListItem Value="1996">1996</asp:ListItem>
 <asp:ListItem Value="1997">1997</asp:ListItem>
 <asp:ListItem Value="1998">1998</asp:ListItem>
 <asp:ListItem Value="1999">1999</asp:ListItem>
 <asp:ListItem Value="2000">2000</asp:ListItem>
 <asp:ListItem Value="2001">2001</asp:ListItem>
 <asp:ListItem Value="2002">2002</asp:ListItem>
 <asp:ListItem Value="2003">2003</asp:ListItem>
 <asp:ListItem Value="2004">2004</asp:ListItem>
 <asp:ListItem Value="2005"  Selected="True">2005</asp:ListItem>
 <asp:ListItem Value="2006">2006</asp:ListItem>
 <asp:ListItem Value="2007">2007</asp:ListItem>
 <asp:ListItem Value="2008">2008</asp:ListItem>
 <asp:ListItem Value="2009">2009</asp:ListItem>
 <asp:ListItem Value="2010">2010</asp:ListItem>
 
 <asp:ListItem Value="2011">2011</asp:ListItem>
 <asp:ListItem Value="2012">2012</asp:ListItem>
 <asp:ListItem Value="2013">2013</asp:ListItem>
 <asp:ListItem Value="2014">2014</asp:ListItem>
 <asp:ListItem Value="2015">2015</asp:ListItem>
 <asp:ListItem Value="2016">2016</asp:ListItem>
 <asp:ListItem Value="2017">2017</asp:ListItem>
 <asp:ListItem Value="2018">2018</asp:ListItem>
 <asp:ListItem Value="2019">2019</asp:ListItem>
 <asp:ListItem Value="2020">2020</asp:ListItem>
 
 <asp:ListItem Value="2021">2021</asp:ListItem>
 <asp:ListItem Value="2022">2022</asp:ListItem>
 <asp:ListItem Value="2023">2023</asp:ListItem>
 <asp:ListItem Value="2024">2024</asp:ListItem>
 <asp:ListItem Value="2025">2025</asp:ListItem>
 <asp:ListItem Value="2026">2026</asp:ListItem>
 <asp:ListItem Value="2027">2027</asp:ListItem>
 <asp:ListItem Value="2028">2028</asp:ListItem>
 <asp:ListItem Value="2029">2029</asp:ListItem>
 <asp:ListItem Value="2030">2030</asp:ListItem>
 
 <asp:ListItem Value="2031">2031</asp:ListItem>
 <asp:ListItem Value="2032">2032</asp:ListItem>
 <asp:ListItem Value="2033">2033</asp:ListItem>
 <asp:ListItem Value="2034">2034</asp:ListItem>
 <asp:ListItem Value="2035">2035</asp:ListItem>
 <asp:ListItem Value="2036">2036</asp:ListItem>
 <asp:ListItem Value="2037">2037</asp:ListItem>
 <asp:ListItem Value="2038">2038</asp:ListItem>
 <asp:ListItem Value="2039">2039</asp:ListItem>
 <asp:ListItem Value="2040">2040</asp:ListItem>

 <asp:ListItem Value="2041">2041</asp:ListItem>
 <asp:ListItem Value="2042">2042</asp:ListItem>
 <asp:ListItem Value="2043">2043</asp:ListItem>
 <asp:ListItem Value="2044">2044</asp:ListItem>
 <asp:ListItem Value="2045">2045</asp:ListItem>
 <asp:ListItem Value="2046">2046</asp:ListItem>
 <asp:ListItem Value="2047">2047</asp:ListItem>
 <asp:ListItem Value="2048">2048</asp:ListItem>
 <asp:ListItem Value="2049">2049</asp:ListItem>
 <asp:ListItem Value="2050">2050</asp:ListItem>
 
 
</asp:dropdownlist>
                                            
                                            
                                            
                                            </td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:Label ID="labSelectResult9" runat="server" Text="Father Name" 
                                                CssClass="lable_text"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="textbox8" runat="server" Height="20px" Width="224px" 
                                                CssClass="textbox_text" MaxLength="50"></asp:TextBox></td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text">
                                            <asp:Label ID="labSelectResult10" runat="server" Text="Mothers Name"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="textbox9" runat="server" Height="18px" Width="271px" 
                                                CssClass="textbox_text" MaxLength="50"></asp:TextBox>
                                            
                                            
                                            
                                            </td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:Label ID="labSelectResult11" runat="server" CssClass="lable_text" 
                                                Text="Result Type"></asp:Label>
                                        </td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor">
                                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                                CssClass="lable_text" Height="20px" Width="120px">
                                                <asp:ListItem>Semester</asp:ListItem>
                                                <asp:ListItem>Year</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td class="style1">
                                            &nbsp;</td>
                                        <td class="style2">
                                            &nbsp;</td>
                                        <td class="style2">
                                            &nbsp;</td>
                                        <td class="style2">
                                            &nbsp;</td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            &nbsp;</td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor" colspan="3">
                                            <asp:Button ID="btnAdd" runat="server" Text="Add" Width="65px" 
                                                CssClass="button_text" OnClientClick ="return ValidateForm()"/>
                                            </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td colspan="4" class="message_text">
                                            &nbsp;<asp:Label ID="labMessage" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="4">
                                            
                                           
                                            <div id="container">
    
        <asp:GridView ID="gvCustomres" runat="server"
            DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" DataKeyNames="code" PageSize="15">
            <Columns>
                <asp:BoundField DataField="code" HeaderText="code" InsertVisible="False" 
                    ReadOnly="True" SortExpression="code" />
                <asp:BoundField DataField="ProCode" HeaderText="ProCode" 
                    SortExpression="ProCode" />
                <asp:BoundField DataField="rollno" HeaderText="rollno" 
                    SortExpression="rollno" />
                <asp:BoundField DataField="coursename" HeaderText="coursename" 
                    SortExpression="coursename" />
                <asp:BoundField DataField="stuname" HeaderText="stuname" 
                    SortExpression="stuname" />
                <asp:BoundField DataField="dob" HeaderText="dob" 
                    SortExpression="dob" />
                <asp:BoundField DataField="batchfrom" HeaderText="Batch From" SortExpression="batchfrom" />
                 <asp:BoundField DataField="batchto" HeaderText="Batch To" SortExpression="batchto" />
                <asp:BoundField DataField="fathername" HeaderText="fathername" 
                    SortExpression="fathername" />
                <asp:BoundField DataField="mothername" HeaderText="mothername" 
                    SortExpression="mothername" />
                <asp:BoundField DataField="ResultType" HeaderText="Result Type" 
                    SortExpression="result" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [StuReg]"
                                                     DeleteCommand="delete from StuReg where code=@code


" 
                                                      
                                                    UpdateCommand="update StuReg set ProCode=@ProCode,rollno=@rollno,coursename=@coursename,stuname=@stuname,dob=@dob,batchfrom=@batchfrom,batchto=@batchto,fathername=@fathername,mothername=@mothername where code=@code">
                                                </asp:SqlDataSource>
    
    </div></td>
                                    </tr>
                                    
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 21px;" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td style="height: 21px; background-image: url(../Images/table_down_bg.png)">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="height: 10px;">
                  <!--#include file="inc-bottom.aspx"--> 
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
