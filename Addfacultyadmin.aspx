<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Addfacultyadmin.aspx.cs" Inherits="Addfacultyadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            margin-left: 320px;
        }
        .auto-style2 {
            color: #FF3300;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: x-large;
            color: #993366;
        }
        .auto-style4 {
            text-decoration: underline;
        }
        .auto-style5 {
            font-size: x-large;
            color: #993366;
        }
        .auto-style6 {
            color: #993366;
            font-weight: 700;
        }
        .auto-style7 {
            color: #993366;
            width: 273px;
            height: 173px;
            margin-top: 32px;
            font-size: large;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            color: #993366;
            font-weight: 700;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style4">
        <span class="auto-style5"><strong>&nbsp;</strong></span><strong><span class="auto-style5">Faculty</span></strong></p>
    <p class="auto-style1">
        &nbsp;</p>
    <p>
        <strong><span class="auto-style6"><span class="auto-style8">Add a new Faculty&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
        <span class="auto-style6">&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Faculty" CssClass="auto-style6" />
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p class="auto-style3">
        <strong>Course</strong></p>
    <p>
        &nbsp;</p>
    <p>
        <span class="auto-style9"><strong>Select Faculty </strong></span> <span class="auto-style7"><strong>* </strong> </span><strong><span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Faculty" DataValueField="Faculty" Height="28px" Width="154px" CssClass="auto-style6">
        </asp:DropDownList>
        </strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT distinct  [Faculty] FROM [Faculty]"></asp:SqlDataSource>
    </p>
    <p>
        <strong><span class="auto-style6"><span class="auto-style8">Add&nbsp; a new Course&nbsp;&nbsp;</span>&nbsp;
        </span>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style6"></asp:TextBox>
        <span class="auto-style6">&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="Create Course" Width="127px" CssClass="auto-style6" />
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

