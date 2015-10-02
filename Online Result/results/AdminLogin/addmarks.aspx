<%@ Page Language="VB" AutoEventWireup="false" CodeFile="addmarks.aspx.vb" Inherits="Register" %>
<%
    Response.Expires = -1
    Response.ExpiresAbsolute = DateAdd(DateInterval.Day, -1, Now)
    Response.AddHeader("pragma", "no-cache")
    Response.AddHeader("cache-control", "private")
    Response.CacheControl = "no-cache"
    Response.Buffer = True
    Response.Clear()
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title > Online Result:: </title>
    
      <link href="../stylesheet_admin.css" rel="stylesheet" type="text/css" />
       <link type="text/css" rel="stylesheet" href="../css/style.css" />
      <%-- <script src="../Scripts/jquery-1.2.6.js" type="text/javascript"></script>
        <script src="../Scripts/jquery.MultiFile.js" type="text/javascript"></script>--%>
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
	
	var name=document.form1.textbox10
	var address=document.form1.txtReg_Acc_No0
	var City=document.form1.txtReg_Acc_No
	var Country=document.form1.txtStudentName
	var Phone=document.form1.txtGrade
	
	
	if ((name.value==null)||(name.value=="")){
		alert("Please Enter Roll No./Regn. No Name")
		name.focus()
		return false
	}
	if ((address.value==null)||(address.value=="")){
		alert("Please Enter your Address")
		address.focus()
		return false
	}
if ((City.value==null)||(City.value=="")){
		alert("Please Enter your City")
		City.focus()
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
                    <table border="0" cellspacing="2" cellpadding="2" align="center" 
                        style="width: 82%">
                        <tr>
                            <td style="width: 100%;">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td style="width: 28px" align="right">
                                            <img alt="" src="../images/table_top_left-2.png" width="28" height="45" /></td>
                                        <td style="width: 100%; background-image: url(../images/table_top_bg.png)" align="center"
                                            class="login_heading">
                                            <asp:Label ID="labPageTitle" runat="server" 
                                                Text="Add Result"></asp:Label></td>
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
                                        <td colspan="8" class="links">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 27%;" class="lable_text" colspan="2">
                                            <asp:Label ID="labSelectResult" runat="server" Text="Roll No/Regn. No"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor" colspan="6">
                                            <asp:TextBox ID="textbox10" runat="server" Height="19px" Width="138px" 
                                                CssClass="textbox_text" MaxLength="50"></asp:TextBox>&nbsp;<asp:Button 
                                                ID="btnAdd2" runat="server" Text="Search" Width="65px" 
                                                CssClass="button_text" OnClientClick ="return ValidateForm()"/>
                                        </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text" colspan="2">
                                            <asp:Label ID="labSelectResult0" runat="server" Text="Prog. Code"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:TextBox ID="textbox2" runat="server" Height="19px" Width="138px" 
                                                CssClass="textbox_text" MaxLength="50" ReadOnly="True"></asp:TextBox></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:Label ID="labSelectResult1" runat="server" Text="Course Name" 
                                                CssClass="lable_text" Width="100px"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:TextBox ID="textbox3" runat="server" Height="18px" Width="228px" 
                                                CssClass="textbox_text" MaxLength="50" ReadOnly="True"></asp:TextBox></td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text" colspan="2">
                                            <asp:Label ID="labSelectResult2" runat="server" Text="Name Of Student"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:TextBox ID="textbox4" runat="server" Height="18px" Width="256px" 
                                                CssClass="textbox_text" MaxLength="50" ReadOnly="True"></asp:TextBox></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:Label ID="labSelectResult3" runat="server" Text="DOB" 
                                                CssClass="lable_text"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:TextBox ID="textbox5" runat="server" Height="19px" Width="108px" 
                                                CssClass="textbox_text" MaxLength="50" ReadOnly="True"></asp:TextBox></td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text" colspan="2">
                                            <asp:Label ID="labSelectResult8" runat="server" Text="Batch"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:TextBox ID="textbox11" runat="server" Height="19px" Width="138px" 
                                                CssClass="textbox_text" MaxLength="50" ReadOnly="True"></asp:TextBox>
                                            
                                            
                                            
                                            </td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:Label ID="labSelectResult9" runat="server" Text="Father Name" 
                                                CssClass="lable_text"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:TextBox ID="textbox8" runat="server" Height="20px" Width="224px" 
                                                CssClass="textbox_text" MaxLength="50" ReadOnly="True"></asp:TextBox></td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 25%;" class="lable_text" colspan="2">
                                            <asp:Label ID="labSelectResult10" runat="server" Text="Mothers Name"></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:TextBox ID="textbox9" runat="server" Height="19px" Width="256px" 
                                                CssClass="textbox_text" MaxLength="50" ReadOnly="True"></asp:TextBox>
                                            
                                            
                                            
                                            </td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            &nbsp;</td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    
                                   
                                    <tr>
                                       <td style="width: 25%;" class="lable_text" colspan="2">
                                            <asp:Label ID="Label1" runat="server" Text="Select Result of Sem."></asp:Label></td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                                <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                            </asp:DropDownList>
                                            
                                            
                                            
                                            </td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            &nbsp;</td>
                                        <td style="width: 25%;" class="tableCol2_bgcolor" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td class="style1" colspan="2">
                                            &nbsp;</td>
                                        <td class="style2" colspan="2">
                                            &nbsp;</td>
                                        <td class="style2" colspan="2">
                                            &nbsp;</td>
                                        <td class="style2" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text" colspan="2">
                                            &nbsp;</td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor" colspan="6">
                                            <asp:Button ID="btnAdd" runat="server" Text="Add" Width="65px" 
                                                CssClass="button_text" OnClientClick ="return ValidateForm()" 
                                                Visible="False"/>
                                            <asp:Button ID="btnAdd0" runat="server" Text="Update" Width="65px" 
                                                CssClass="button_text" OnClientClick ="return ValidateForm()" 
                                                Visible="False"/>
                                            <asp:Button ID="btnAdd1" runat="server" Text="Cancel" Width="65px" 
                                                CssClass="button_text" OnClientClick ="return ValidateForm()" 
                                                Visible="False"/>
                                            
                                           
                                            <asp:Button ID="Button1" runat="server" style="height: 26px" 
                                                Text="Calculate Marks" Visible="False" />
                                            </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td colspan="8" class="message_text">
                                            &nbsp;<asp:Label ID="labMessage" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="8">
                                            
                                           
                                            <div id="container">
    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                  <Columns>
                                     <asp:templatefield headertext="SrNo" Visible="False">
				<itemtemplate>
					<asp:textbox id="ShipperID" Width ="20px" runat="server"   text='<%# Bind("ImageId") %>' ReadOnly="True" />
				</itemtemplate>
			</asp:templatefield>
                                      <asp:ImageField DataImageUrlField="Imagepath" HeaderText="Preview" NullDisplayText="No Preview"
                                          ReadOnly="True">
                                          <ControlStyle Height="100px" Width="100px" />
                                      </asp:ImageField>
                                      <asp:TemplateField HeaderText="Creative Detail">
                  <ItemTemplate>
                  <a href ="javascript:void(0)"
 onclick="window.open('Detail.aspx?ID=<%# Eval("imageid")%>','n','width=600,height=600,scrollbars=yes');return false;"><%# Eval("fullview")%> </a>

                 
                  </ItemTemplate>
              </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Feedback">
                                          <ItemTemplate>
                                              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" >
                                                  <asp:ListItem>Select</asp:ListItem>
                                                  <asp:ListItem>approved</asp:ListItem>
                                                  <asp:ListItem>feedback</asp:ListItem>
                                                  
                                              </asp:DropDownList>
                                          </ItemTemplate>
                                          
                                      </asp:TemplateField>
                                      <asp:templatefield headertext="Type Feedback" >
				<itemtemplate>
					<asp:textbox id="txtPhone" runat="server"  TextMode="MultiLine"  Visible ="false" text='<%# Bind("comment") %>' />
				</itemtemplate>
			</asp:templatefield>
                                  </Columns>
                              </asp:GridView>--%>
        <asp:GridView ID="gvCustomres" runat="server" 
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="code" HeaderText="code" Visible="False" />
                <asp:TemplateField headertext="Subject Code">
                 <ItemTemplate>

          <asp:Label id="lblAddressId1" runat ="server" text='<%# Eval("SubCode")%>'></asp:Label>

         </ItemTemplate>
                
                </asp:TemplateField>
                 <asp:TemplateField headertext="Subject Name">
                 <ItemTemplate>

          <asp:Label id="lblAddressId2" runat ="server" text='<%# Eval("SubName")%>'></asp:Label>

         </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField headertext="Max. Marks">
                 <ItemTemplate>

          <asp:Label id="lblAddressId3" runat ="server" text='<%# Eval("maxmarks")%>'></asp:Label>

         </ItemTemplate>
                
                </asp:TemplateField>
                
                
                 <asp:templatefield headertext="Marks Obtained" >
				<itemtemplate>
					<asp:textbox id="txtPhone" runat="server"    Visible ="true" text="" />
				</itemtemplate>
			</asp:templatefield>
               
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
    
    </div></td>
                                    </tr>
                                    
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            &nbsp;</td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="2">
                                            
                                           
                                            &nbsp;</td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            <asp:Button ID="btnAdd3" runat="server" Text="      Add" Width="165px" 
                                                CssClass="button_text" OnClientClick ="return ValidateForm()"/>
                                        </td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            &nbsp;</td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="2">
                                            
                                           
                                            &nbsp;</td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            &nbsp;</td>
                                    </tr>
                                    
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            <asp:Label ID="Label2" runat="server" Text="Total Marks" Visible="False"></asp:Label></td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="2">
                                            
                                           
                                            <asp:TextBox ID="TextBox12" runat="server" CssClass="textbox_text" 
                                                Height="20px" ReadOnly="True" Visible="False"></asp:TextBox>
                                        </td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            <asp:Label ID="Label3" runat="server" Text="Total Marks Obtained" 
                                                Visible="False"></asp:Label></td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            <asp:TextBox ID="TextBox13" runat="server" CssClass="textbox_text" 
                                                Height="22px" ReadOnly="True" Visible="False"></asp:TextBox>
                                        </td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="2">
                                            
                                           
                                            <asp:Label ID="Label4" runat="server" Text="Result/division" Visible="False"></asp:Label></td>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            
                                           
                                            <asp:TextBox ID="TextBox14" runat="server" CssClass="textbox_text" 
                                                Height="22px" ReadOnly="True" Width="66px" Visible="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="8">
                                            
                                           
                                            &nbsp;</td>
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
