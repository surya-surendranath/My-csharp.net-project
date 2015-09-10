<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="StudentGrantadmin.aspx.cs" Inherits="StugentGrantadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style11
        {
            text-align: right;
            width: 152px;
        }
        .style2
        {
            width: 124px;
        }
        .style14
        {
            width: 3px;
        }
        .style17
        {
            text-align: right;
            width: 122px;
        }
        .style6
        {
            width: 131px;
            text-align: left;
        }
        .style16
        {
            text-align: right;
            width: 152px;
            font-family: "Arno Pro Smbd SmText";
        }
        .style15
        {
            font-family: "Arno Pro Smbd SmText";
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
        .style18
        {
            width: 122px;
            height: 42px;
            text-align: right;
        }
        .style10
        {
            width: 131px;
            height: 42px;
            text-align: left;
        }
        .style3
        {
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
            width: 152px;
            height: 23px;
        }
        .auto-style4 {
            width: 153px;
            height: 23px;
        }
        .auto-style5 {
            width: 135px;
            height: 23px;
        }
        .auto-style7 {
            width: 131px;
            text-align: left;
            height: 23px;
        }
        .auto-style8 {
            width: 135px;
        }
        .auto-style9 {
            width: 135px;
            height: 42px;
        }
        .auto-style10 {
            text-align: right;
            width: 135px;
            height: 23px;
        }
        .auto-style12 {
            text-align: right;
            width: 127px;
            height: 23px;
        }
        .auto-style13 {
            text-align: right;
            width: 127px;
        }
        .auto-style14 {
            width: 127px;
            height: 42px;
            text-align: right;
        }
        .auto-style15 {
            width: 127px;
            height: 23px;
        }
        .auto-style16 {
            width: 153px;
        }
        .auto-style17 {
            width: 153px;
            height: 42px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 60%; height: 217px; margin-left: 0px; font-weight: 700; color: #993366; font-size: large;" align="center">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style12"></td>
            <td class="auto-style7">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 0px" Text="View Student Grant Summary" Visible="False" Width="188px" />
            </td>
            <td class="auto-style10">&nbsp; &nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete Grants" Visible="False" Width="113px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style12"></td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; StudentID:</td>
            <td class="auto-style16">
                <asp:Label ID="StudentID" runat="server" CssClass="style15"></asp:Label>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">Student Age:</td>
            <td class="style6">
                <asp:Label ID="StudentAge" runat="server" Text="StudentAge"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">Ethinicity:&nbsp; </td>
            <td class="style6">
                <asp:Label ID="StudentEthinicity" runat="server" Text="StudentEthinicity"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Type of Voucher:" Font-Bold="False" 
                        style="font-family: 'Arno Pro Smbd Display'; font-weight: 700;"></asp:Label>
            </td>
            <td class="auto-style17">
        <asp:DropDownList ID="VoucherType" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="22px" 
                        Width="127px" DataSourceID="SqlDataSource1" DataTextField="Grant_Type" DataValueField="Grant_Type">
        </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT * FROM [StudentGrant]"></asp:SqlDataSource>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style14">
                <asp:Label ID="GrantDescriptionLbl" runat="server" Text="Grant Discription: " 
                        style="font-family: 'Arno Pro Smbd Display'" ForeColor="Black"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="GrantDescriptiontxt" runat="server" textmode="multiline" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="style11">&nbsp;<asp:Label ID="lblValue" runat="server" Text="Voucher Value:" 
                        style="text-align: center; font-family: 'Arno Pro Smbd Display';"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="VoucherValue" runat="server" Width="110px" Enabled="False" OnTextChanged="VoucherValue_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">&nbsp;<asp:Label ID="lblKoha" runat="server" Text="Koha Funds: " 
                        style="text-align: right; font-family: 'Arno Pro Smbd Display';"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txbKuha" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style12"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="style3" colspan="5">&nbsp;&nbsp;
                <asp:Button ID="SubmitVoucher" runat="server" onclick="SubmitVoucher_Click" 
            Text="Submit" style="font-family: 'Times New Roman', Times, serif" />
            </td>
        </tr>
    </table>
</asp:Content>

