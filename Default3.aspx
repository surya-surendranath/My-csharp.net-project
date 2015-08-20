<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

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
    

    .auto-style1 {
        font-size: x-large;
        color: #0033CC;
    }
    .auto-style6 {
        height: 47px;
        font-size: x-large;
        color: #0033CC;
        text-align: center;
        margin-bottom: 0px;
    }
    .auto-style7 {
        font-size: large;
        color: #000000;
    }
    .auto-style4 {
        font-size: medium;
        color: #000000;
    }
        .auto-style9 {
            text-align: center;
            color: #FF0066;
            font-size: x-large;
        }
        .auto-style10 {
            font-size: xx-large;
        }
        </style>
</head>
<body style="color: #CC00CC">
    <form id="form1" runat="server">
    <div style="color: #FF9933">
      &nbsp;<asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
          </asp:ToolkitScriptManager>
          <br /><br /></div>
                  <div style="text-align:center; color: #333300;">
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1"><strong>ADMINISTRATOR&nbsp;</strong><strong style="font-size: xx-large">&nbsp;</strong></span></p>
                      <p class="auto-style9">
                          <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">NATIONAL COLLEGE</span></strong></p>
    <p class="auto-style8">
        &nbsp;</p>
<p class="auto-style6" style="background-color: #99CCFF">
    &nbsp;
    <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Loginid"></asp:Label>
    <strong><span class="auto-style7">&nbsp;</span><span class="auto-style4">&nbsp; 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </span></strong>
</p>
<p class="auto-style6" style="background-color: #99CCFF">
    <asp:Label ID="Label3" runat="server" style="font-size: large" Text="Password"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p class="auto-style6" style="background-color: #99CCFF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="Login" Width="94px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p class="auto-style6" style="background-color: #99CCFF; color: #FF3399;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblError" runat="server" style="font-size: small; color: #FF0000" Text="lblError"></asp:Label>
</p>
    <p>
        &nbsp;</p>
    
      
    </div>
    </form>
</body>
</html>
