<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Login" %>
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
<head runat="server">
     <title>:: ADMIN LOGIN</title>
     <link href="stylesheet_admin.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div  >
        <table width="100%" style="height: 599px; " border="0" cellpadding="0" cellspacing="0">
            
            <tr >
                <td valign="top" class="table_align">
                    <br />
                    <br />
                    <table border="0" cellspacing="2" cellpadding="2" style="width: 24%" 
                        align="center">
                        <tr>
                            <td style="width: 300px;">
                                <table border="0" cellspacing="0" cellpadding="0" style="width: 100%">
                                    <tr>
                                        <td style="width: 5%" align="right">
                                            <img alt="" src="images/table_top_left-2.png" width="28" height="45" /></td>
                                        <td style="width: 100%; background-image: url(images/table_top_bg.png)" align="center"
                                            class="login_heading">
                                            <asp:Label ID="labPageTitle" runat="server" Text="Secure Login" 
                                                ForeColor="White"></asp:Label></td>
                                        <td style="width: 5%;" align="left">
                                            <img alt="" src="images/table_top_right-2.png" width="28" height="45" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top" style="width: 517px">
                                <table border="0" style="text-align: center; width: 100%;" cellpadding="1" 
                                    cellspacing="1">
                                    <tr>
                                        <td colspan="2" class="links">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="labSelectAdmin" runat="server" Text="User Name"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="txtUName" CssClass="textbox_text" runat="server" Width="142px"
                                                MaxLength="50" Height="15px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 27%;" class="lable_text">
                                            <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label></td>
                                        <td style="width: 73%;" class="tableCol2_bgcolor">
                                            <asp:TextBox ID="txtUPass" CssClass="textbox_text" runat="server" Width="140px"
                                                MaxLength="50" Height="16px" TextMode="Password"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 32px;" align="left" valign="top" class="lable_text">
                                            &nbsp;</td>
                                        <td style="height: 32px;" align="left" valign="middle" class="tableCol2_bgcolor">
                                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button_text" />
                                            
                                            &nbsp;
                                            <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="button_text" />
                                            
                                            </td>
                                            
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="message_text">
                                            &nbsp;<asp:Label ID="labMessage" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 21px;" valign="top">
                                <table border="0" cellspacing="0" cellpadding="0" style="width: 100%">
                                    <tr>
                                        <td style="height: 21px; background-image: url(Images/table_down_bg.png)">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    
                </td>
            </tr>
           
        </table>
    </div>
    </form>
</body>
</html>
