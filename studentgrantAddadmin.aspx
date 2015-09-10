<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="studentgrantAddadmin.aspx.cs" Inherits="studentgrantadmin" %>

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
        .auto-style2 {
            width: 124px;
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 60%; height: 217px; margin-left: 0px; font-weight: 700; color: #993366;" align="center">
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style14">&nbsp;</td>
            <td class="style17">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style2">&nbsp;</td>
            <td class="style14">&nbsp;</td>
            <td class="style17">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="style7">&nbsp;&nbsp;Add Grant </td>
            <td class="style8">
                <asp:TextBox ID="TextBox1" runat="server" Width="136px"></asp:TextBox>
            </td>
            <td class="style9"></td>
            <td class="style18">&nbsp;</td>
            <td class="style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style14">&nbsp;</td>
            <td class="style17">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Grant" Width="89px" />
            </td>
            <td class="style14">&nbsp;</td>
            <td class="style17">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style14">&nbsp;</td>
            <td class="style17">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="style11">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style14">&nbsp;</td>
            <td class="style17">&nbsp;</td>
            <td class="style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="5">&nbsp;&nbsp;
        </td>
        </tr>
    </table>
</asp:Content>

