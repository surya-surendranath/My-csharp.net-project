<%@ Page Language="VB" AutoEventWireup="false" CodeFile="semdetail.aspx.vb" Inherits="Register" %>
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
    <title > Online Result::</title>
    
      <link href="../stylesheet_admin.css" rel="stylesheet" type="text/css" />
       <link type="text/css" rel="stylesheet" href="../css/style.css" />
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
	
	var name=document.form1.TextBox1
	var address=document.form1.TextBox2
	var City=document.form1.TextBox3
	var Country=document.form1.txtStudentName
	var Phone=document.form1.txtGrade
		var cprofile=document.form1.DropDownList1
	
	if (cprofile.value=="---Select---"){
		alert("Please Select Progarm :")
		cprofile.focus()
		return false
	}
	
	if ((name.value==null)||(name.value=="")){
		alert("Please Enter Subject Code")
		name.focus()
		return false
	}
	if ((address.value==null)||(address.value=="")){
		alert("Please Enter Subject Name")
		address.focus()
		return false
	}
if ((City.value==null)||(City.value=="")){
		alert("Please Enter Max. Marks")
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
   
</head>
<body>

    <form id="form1" runat="server">
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
                    <table   width="45%" border="0" cellspacing="2" cellpadding="2" align="center">
                        <tr>
                            <td style="width: 100%;">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>
                                        <td style="width: 28px" align="right">
                                            <img alt="" src="../images/table_top_left-2.png" width="28" height="45" /></td>
                                        <td style="width: 100%; background-image: url(../images/table_top_bg.png)" align="center"
                                            class="login_heading">
                                            <asp:Label ID="labPageTitle" runat="server" 
                                                Text="Add Cource Detail"></asp:Label></td>
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
                                        <td colspan="2" class="links">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="labSelectResult" runat="server" Text="Progarm Code"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="labSelectResult0" runat="server" Text="Semester/Year"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            <asp:DropDownList ID="DropDownList2" runat="server">
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
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="labSelectResult1" runat="server" Text="Subject Code"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox_text"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="labSelectResult2" runat="server" Text="Subject Name"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox_text" Height="16px" 
                                                Width="338px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="labSelectResult3" runat="server" Text="Max Marks"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox_text" Height="19px" 
                                                Width="68px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            &nbsp;</td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            &nbsp;</td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            &nbsp;</td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                           <asp:Button ID="btnAdd" runat="server" Text="Add" Width="65px" 
                                                CssClass="button_text" OnClientClick ="return ValidateForm()"/>
                                            </td>
                                    </tr>
                                    
                                   
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="message_text">
                                            &nbsp;<asp:Label ID="labMessage" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text" 
                                            colspan="2">
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
                    ReadOnly="True" SortExpression="code" Visible="False" />
                <asp:BoundField DataField="progcode" HeaderText="Prog Code" 
                    SortExpression="progcode" />
                <asp:BoundField DataField="sem" HeaderText="Sem" 
                    SortExpression="sem" />
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" 
                    SortExpression="SubCode" />
                <asp:BoundField DataField="SubName" HeaderText="Subject Name" 
                    SortExpression="SubName" />
                <asp:BoundField DataField="maxmarks" HeaderText="Max Marks" 
                    SortExpression="maxmarks" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [SemSubDetail]"
                                                      DeleteCommand="delete from SemSubDetail where code=@code" 
                                                      UpdateCommand="update SemSubDetail set progcode=@progcode,sem=@sem,SubCode=@SubCode,SubName=@SubName,maxmarks=@maxmarks where code=@code">
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
