<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Result::</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
// <!CDATA[

function button_onclick() {

}

function textfield_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
<div id="header">

<div id="left_block"><img src="images/OnlineResult.jpg" width="300" height="100" alt="CRM" /></div>
<div id="right_block"><img src="images/Results-new.jpg" width="132" height="99" alt="CRM" /></div>

</div>
<div id="body_content">

<h1>Online Result</h1>
<div id="logo"><img src="images/result.jpg" alt="logo" 
        style="height: 100px; width: 173px" /></div>

<div id="login">
<h2 style="text-align:center">Please Enter Your Username &amp; Password</h2>

<div id="login_block">

    </div>
    <table width="400" border="0" align="center">
      <tr>
        <td align="right" valign="top">Enter Enrollment No: </td>
        <td align="left" valign="top" colspan="3"><asp:TextBox ID="TextBox1" 
                runat="server"></asp:TextBox>
                            </td>
      </tr>
      <tr>
        <td align="right" valign="top">&nbsp;<asp:Label ID="lblmessage" runat="server" 
                style="font-weight: 700; color: #993333"></asp:Label>
                            </td>
        <td align="left" valign="top">
            <asp:DropDownList ID="DropDownList1" runat="server" Visible="False">
            </asp:DropDownList>
                </td>
        <td align="left" valign="top">
            <asp:DropDownList ID="DropDownList2" runat="server" Visible="False">
            </asp:DropDownList>
                </td>
        <td align="left" valign="top">
            <asp:DropDownList ID="DropDownList3" runat="server" Visible="False">
            </asp:DropDownList>
                </td>
      </tr>
      <tr>
        <td valign="top">&nbsp;</td>
        <td align="left" valign="top" colspan="3">&nbsp;<asp:Button ID="Button1" 
                runat="server" Text="Submit" />
                            </td>
      </tr>
    </table>
    </form>
</div>

</div>
</div>
<div id="footer">
  <p>Gaurav Badhani:09312618440 | badhani_gaurav@yahoo.com</p>
</div>
</div>
    </form>
</body>
</html>
