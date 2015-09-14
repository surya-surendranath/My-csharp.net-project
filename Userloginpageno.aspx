<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userloginpage.aspx.cs" Inherits="Userloginpage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--
             // This tutorial is provided in part by Server Intellect Web Hosting Solutions http://www.serverintellect.com
 
    // Visit http://www.ajaxtutorials.com for more AJAX Tutorials Tutorials
 
        --%>

<script runat="server">
[System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            new AjaxControlToolkit.Slide("images/Blue hills.jpg", "Blue Hills", "Go Blue"),
            new AjaxControlToolkit.Slide("images/Sunset.jpg", "Sunset", "Setting sun"),
            new AjaxControlToolkit.Slide("images/Winter.jpg", "Winter", "Wintery..."),
            new AjaxControlToolkit.Slide("images/Water lilies.jpg", "Water lillies", "Lillies in the water"),
            new AjaxControlToolkit.Slide("images/VerticalPicture.jpg", "Sedona", "Portrait style picture")};
        }
</script>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        p.style2
    {
        text-align: center;
    }
        .style1
        {
            font-family: "Arno Pro Smbd SmText";
        }
        .auto-style8 {
            text-align: center;
        }
    

        .auto-style9 {
            text-align: center;
            color: #FF0066;
            font-size: x-large;
        }
        .auto-style10 {
            font-size: xx-large;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            color: #0066FF;
        }
        .auto-style13 {
            color: #0033CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    &nbsp;<asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
          </asp:ToolkitScriptManager>
          <br /><br /></div>
                  <div style="text-align:center">
                      <br />
            <asp:Image ID="Image1" runat="server" 
                Height="199px"
                Style="border: 1px solid black;" 
                ImageUrl="Images/Blue hills.jpg"
                AlternateText="Blue Hills image" Width="398px" />
                      <br /><br />
       
            <asp:SlideShowExtender ID="slideshowextend1" runat="server" 
                TargetControlID="Image1"
                SlideShowServiceMethod="GetSlides" 
                AutoPlay="true" 
                ImageTitleLabelID="imageTitle"
                ImageDescriptionLabelID="imageDescription"
               
                Loop="true" />
        <p class="auto-style8">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style11">&nbsp;<strong><span class="auto-style12">&nbsp;</span><span class="auto-style13">USER LOGIN</span></strong></span></p>
                      <p class="auto-style9">
                          <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">NATIONAL UNIVERSITY</span></strong></p>
    <p class="auto-style8">
        &nbsp;</p>
                      <p class="auto-style8">
                          &nbsp;</p>
    <p style="height: 43px; background-color: #66CCFF;" class="style2">
        <span class="style1">&nbsp;LOGIN ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>&nbsp;<asp:TextBox ID="txbLogin" runat="server" Width="104px" OnTextChanged="txbLogin_TextChanged"></asp:TextBox>
</p>
<p style="height: 38px; background-color: #66CCFF;" class="style2">
    <span class="style1">PASSWORD:&nbsp;</span>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbPassword" runat="server" TextMode="Password" Width="104px" OnTextChanged="txbPassword_TextChanged"></asp:TextBox>
</p>
<p style="height: 34px;  background-color: #66CCFF;"text-align: center";margin-left: 0px; width: 858px; background-color: #66CCFF;" class="style2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" onclick="Button1_Click" Text="Login" align="center"
        Width="60px" 
        style="font-family: 'Times New Roman', Times, serif; height: 25px;" />
</p>
<p style="height: 37px; background-color: #66CCFF;" class="style2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblError" runat="server" ForeColor="Red" 
        style="font-family: 'Arno Pro Smbd SmText'"></asp:Label>
</p>
    <p style="height: 33px; background-color: #66CCFF;" class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlPWD" runat="server" NavigateUrl="~/Forgotpasword.aspx">Forgot Password</asp:HyperLink>
</p>
    
    </div>
    </form>
</body>
</html>
