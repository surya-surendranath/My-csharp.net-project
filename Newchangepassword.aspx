<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Newchangepassword.aspx.cs" Inherits="Newchangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Userloginpage.aspx" style="font-weight: 700; font-size: x-large; color: #993399" Visible="False">Login</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong><span class="auto-style3">User ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
        <span class="auto-style3">&nbsp;
    </span></strong>
    </p>
    <p>
        <strong><span class="auto-style3">New Password:&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="150px" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Password" Width="123px" CssClass="auto-style3" />
    </strong>
</asp:Content>

