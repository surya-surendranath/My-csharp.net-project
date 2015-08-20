<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            color: #993366;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong><span class="auto-style3">User ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Old Password:&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">New Password:&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Password" Width="123px" CssClass="auto-style3" />
    </strong>
</asp:Content>

