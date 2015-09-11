<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentGrants.aspx.cs" Inherits="StudentGrants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 124px;
        }
        .style3
        {
            text-align: center;
        }
        .style6
        {
            width: 131px;
            text-align: left;
        }
        .style7
        {
            width: 152px;
            height: 42px;
            text-align: right;
        }
        .style8
        {
            width: 124px;
            height: 42px;
        }
        .style9
        {
            width: 3px;
            height: 42px;
        }
        .style10
        {
            width: 131px;
            height: 42px;
            text-align: left;
        }
        .style11
        {
            text-align: right;
            width: 152px;
        }
        .style14
        {
            width: 3px;
        }
        .style15
        {
            font-family: "Arno Pro Smbd SmText";
        }
        .style16
        {
            text-align: right;
            width: 152px;
            font-family: "Arno Pro Smbd SmText";
        }
        .style17
        {
            text-align: right;
            width: 122px;
        }
        .style18
        {
            width: 122px;
            height: 42px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <table style="width: 60%; height: 217px; margin-left: 0px;" align="center">
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; StudentID:</td>
                <td class="style2">
        <asp:Label ID="StudentID" runat="server" CssClass="style15"></asp:Label>
                </td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Type of Voucher:" Font-Bold="False" 
                        style="font-family: 'Arno Pro Smbd Display'"></asp:Label>
                </td>
                <td class="style8">
        <asp:DropDownList ID="VoucherType" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="22px" 
                        Width="127px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Advice</asp:ListItem>
            <asp:ListItem>PetrolVouchers</asp:ListItem>
            <asp:ListItem>FoodVouchers</asp:ListItem>
            <asp:ListItem>TrainTickets</asp:ListItem>
            <asp:ListItem>Hardship</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="style9">
                </td>
                <td class="style18">
        <asp:Label ID="GrantDescriptionLbl" runat="server" Text="Grant Discription: " 
                        style="font-family: 'Arno Pro Smbd Display'" ForeColor="Black"></asp:Label>
                </td>
                <td class="style10">
        <asp:TextBox ID="GrantDescriptiontxt" runat="server" textmode="multiline" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
&nbsp;<asp:Label ID="lblValue" runat="server" Text="Voucher Value:" 
                        style="text-align: center; font-family: 'Arno Pro Smbd Display';"></asp:Label>
                </td>
                <td class="style2">
        <asp:TextBox ID="VoucherValue" runat="server" Width="110px" Enabled="False"></asp:TextBox>
                </td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style17">
&nbsp;<asp:Label ID="lblKoha" runat="server" Text="Koha Funds: " 
                        style="text-align: right; font-family: 'Arno Pro Smbd Display';"></asp:Label>
                </td>
                <td class="style6">
        <asp:TextBox ID="txbKuha" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="5">
                    &nbsp;&nbsp;
        <asp:Button ID="SubmitVoucher" runat="server" onclick="SubmitVoucher_Click" 
            Text="Submit" style="font-family: 'Times New Roman', Times, serif" />
                </td>
            </tr>
        </table>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;&nbsp;
        </p>
    <p style="text-align: center">
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p style="text-align: center">
        &nbsp;</p>
</asp:Content>

