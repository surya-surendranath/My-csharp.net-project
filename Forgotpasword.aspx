<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgotpasword.aspx.cs" Inherits="Forgotpasword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: x-large;
            color: #660066;
        }
        .auto-style3 {
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center" class="auto-style1">
        <strong>Please Enter Security Questions</strong></p>
    <p style="text-align: center">
        &nbsp;</p>
    <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;
</span>
<asp:Label ID="Label2" runat="server" Text="Enter UserID" CssClass="auto-style3"></asp:Label>
    </strong>:<strong><asp:TextBox ID="TextBox3" runat="server" style="margin-left: 24px" CssClass="auto-style3"></asp:TextBox>
    </strong>
    <p class="auto-style3">
        <strong>&nbsp;&nbsp;&nbsp; Who is your best childhood&nbsp; friend?</strong></p>
    <p>
        <strong><span class="auto-style3">&nbsp;
        </span>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="250px" CssClass="auto-style3"></asp:TextBox>
        <span class="auto-style3">&nbsp;</span></strong></p>
<p class="auto-style3">
    <strong>&nbsp;&nbsp;&nbsp; What is the name of your pet name?</strong></p>
<p>
    <strong><span class="auto-style3">&nbsp;&nbsp;
    </span>
    <asp:TextBox ID="TextBox2" runat="server" Width="242px" CssClass="auto-style3"></asp:TextBox>
    </strong>
    </p>
<p>
    <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next -&gt;" CausesValidation="False" CssClass="auto-style3" />
    </strong>
    </p>
<p>
    &nbsp;</p>
    <p>
    </p>
</asp:Content>

