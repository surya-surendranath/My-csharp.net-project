<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Searchstudentuser.aspx.cs" Inherits="Searchstudentuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            text-align: center;
            
        }
        .auto-style6 {
            color: #990099;
        }
        .auto-style11 {
            text-align: center;
            color: #990099;
        }
        .auto-style10 {
            width: 336px;
            font-family: "Arno Pro Smbd SmText";
            text-align: right;
            height: 44px;
            color: #990099;
        }
        .style15
        {
            width: 132px;
            height: 44px;
            text-align: center;
        }
        .style14
        {
            width: 112px;
            height: 44px;
            text-align: left;
        }
        .auto-style12 {
            width: 336px;
            font-family: "Arno Pro Smbd SmText";
            height: 24px;
        }
        .style16
        {
            width: 132px;
            height: 24px;
            text-align: center;
        }
        .style10
        {
            width: 112px;
            height: 24px;
            text-align: left;
        }
        .auto-style8 {
            width: 336px;
            font-family: "Arno Pro Smbd SmText";
            text-align: center;
            color: #990099;
        }
        .style17
        {
            width: 132px;
            text-align: center;
        }
        .auto-style7 {
            width: 112px;
            text-align: left;
            color: #990099;
        }
        .auto-style9 {
            width: 132px;
            text-align: center;
            color: #990099;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style2">
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    <strong>
    <br class="auto-style6" /></strong>
</p>
<p class="auto-style11">
    &nbsp;</p>
<p class="style2">
    <strong>
    <br class="auto-style6" /></strong>
    <table align="center" style="width: 52%;">
        <tr>
            <td class="auto-style10"><strong>Enter the Student ID or First Name:</strong></td>
            <td class="style15"><strong>
                <asp:TextBox ID="txtSearchID" runat="server" style="text-align: center; margin-left: 19px;" OnTextChanged="txtSearchID_TextChanged" CssClass="auto-style6" Width="136px"></asp:TextBox>
                </strong></td>
            <td class="style14"><strong>
                <asp:Label ID="Label1" runat="server" Text="(Case Sensitive)" 
                        style="text-align: left" CssClass="auto-style6"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="style16"><strong>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text="Please try again" 
            Visible="False" CssClass="auto-style6"></asp:Label>
                </strong></td>
            <td class="style10"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="style17"><span class="auto-style6"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong></span><strong>
                <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
            Text="Search" Width="88px" Font-Size="Small" 
                        style="font-family: 'Times New Roman', Times, serif" CssClass="auto-style6" />
                </strong></td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9"><strong>
                <br /></strong></td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="style17"><span class="auto-style6"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong></span><strong>
                <asp:Button ID="btnAdd" runat="server" Text="Add Student" 
            onclick="btnAdd_Click" Width="88px" 
                        style="font-family: 'Times New Roman', Times, serif" CssClass="auto-style6" />
                </strong></td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
    <strong>
    <br class="auto-style6" /></strong>
</p>
</asp:Content>

