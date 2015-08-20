<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login_Page.aspx.cs" Inherits="Login_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        p.style2
    {
        text-align: center;
    }
        .style1
        {
            font-family: "Arno Pro Smbd SmText";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <p style="height: 28px" class="style2">
        &nbsp;</p>
    <p style="height: 28px" class="style2">
        &nbsp;</p>
    <p style="height: 28px" class="style2">
        <span class="style1">&nbsp;LOGIN ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>&nbsp;<asp:TextBox ID="txbLogin" runat="server" Width="104px" OnTextChanged="txbLogin_TextChanged"></asp:TextBox>
</p>
<p style="height: 28px" class="style2">
    <span class="style1">PASSWORD:&nbsp;</span>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbPassword" runat="server" TextMode="Password" Width="104px" OnTextChanged="txbPassword_TextChanged"></asp:TextBox>
</p>
<p style="height: 28px; margin-left: 80px;" class="style2">
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" onclick="Button1_Click" Text="Login" 
        Width="60px" 
        style="font-family: 'Times New Roman', Times, serif; height: 25px;" />
</p>
<p style="height: 28px" class="style2">
    <asp:Label ID="lblError" runat="server" ForeColor="Red" 
        style="font-family: 'Arno Pro Smbd SmText'"></asp:Label>
</p>
    <p style="height: 28px" class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlPWD" runat="server" NavigateUrl="~/Forgotpasword.aspx">Forgot Password</asp:HyperLink>
</p>
</asp:Content>

