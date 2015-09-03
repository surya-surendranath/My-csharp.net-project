<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Grantsumadmin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style28
    {
        width: 858px;
            height: 201px;
            margin-left: 239px;
        }
    .style31
    {
        width: 256px;
        text-align: left;
        height: 32px;
    }
        .style39
        {
            width: 256px;
            height: 12px;
        }
        .style4
    {
        width: 256px;
        text-align: left;
    }
        .style2
        {
            text-align: center;
        }
        .style51
        {
            font-family: "Arno Pro Smbd SmText";
            font-weight: bold;
        }
    .style22
    {
        width: 795px;
            
            height: 531px;
        }
        .style41
        {
            width: 796px;
            text-align: right;
            height: 24px;
        }
        .style42
        {
            height: 24px;
        }
        .style43
        {
            width: 13px;
            height: 24px;
        }
        .style44
        {
            width: 15px;
            height: 24px;
        }
        .style45
        {
            width: 169px;
            height: 24px;
        }
        .style32
        {
            height: 9px;
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
        }
        .style26
    {
            height: 9px;
            width: 168px;
        }
        .style34
        {
            height: 9px;
            width: 13px;
        }
        .style36
        {
            height: 9px;
            width: 15px;
        }
        .style27
    {
        height: 9px;
        width: 169px;
    }
        .style38
        {
            width: 796px;
            text-align: right;
        }
        .style33
        {
            width: 13px;
        }
        .style35
        {
            width: 15px;
        }
        .style25
    {
        width: 169px;
    }
        .style37
        {
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
        }
        .style46
        {
            text-align: right;
            width: 796px;
            font-weight: bold;
            height: 26px;
            font-family: "Arno Pro Smbd SmText";
        }
        .style47
        {
            height: 26px;
        }
        .style48
        {
            width: 13px;
            height: 26px;
        }
        .style49
        {
            width: 15px;
            height: 26px;
        }
        .style50
        {
            width: 169px;
            height: 26px;
        }
        .auto-style1 {
            width: 180px;
            height: 46px;
            color: #660066;
        }
        .auto-style2 {
            width: 90px;
        }
        .auto-style3 {
            width: 1445px;
            height: 46px;
            font-weight: 700;
            font-family: "Arno Pro Smbd SmText";
            text-align: right;
        font-size: large;
            color: #660066;
        }
        .auto-style4 {
            width: 1445px;
            height: 12px;
            font-weight: bold;
            color: #660066;
        }
        .auto-style5 {
            width: 1445px;
            text-align: right;
            font-weight: bold;
            font-family: "Arno Pro SmText";
            font-size: large;
            color: #660066;
        }
        .auto-style6 {
            width: 1445px;
            text-align: right;
            font-weight: bold;
            font-family: "Arno Pro SmText";
            height: 30px;
            color: #660066;
        }
        .auto-style7 {
            width: 256px;
            text-align: left;
            height: 30px;
        }
        .auto-style8 {
            width: 796px;
            text-align: right;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 13px;
            height: 23px;
        }
        .auto-style11 {
            width: 15px;
            height: 23px;
        }
        .auto-style12 {
            width: 169px;
            height: 23px;
        }
    .auto-style13 {
        font-family: "Arno Pro Smbd SmText";
        font-weight: bold;
        font-size: x-large;
        color: #660066;
    }
    .auto-style14 {
        font-size: x-large;
            color: #660066;
        }
        .auto-style15 {
            width: 256px;
            text-align: left;
            height: 46px;
        }
        .auto-style16 {
            width: 273px;
            height: 46px;
            margin-top: 32px;
        }
        .auto-style17 {
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
            color: #660066;
        }
        .auto-style18 {
            width: 169px;
            color: #660066;
        }
        .auto-style19 {
            width: 15px;
            color: #660066;
        }
        .auto-style20 {
            color: #660066;
        }
        .auto-style21 {
            width: 13px;
            color: #660066;
        }
        .auto-style22 {
            text-align: right;
            width: 796px;
            font-weight: bold;
            height: 26px;
            font-family: "Arno Pro Smbd SmText";
            color: #660066;
        }
        .auto-style23 {
            width: 796px;
            text-align: right;
            color: #660066;
        }
        .auto-style24 {
            height: 9px;
            width: 169px;
            color: #660066;
        }
        .auto-style25 {
            height: 9px;
            width: 15px;
            color: #660066;
        }
        .auto-style26 {
            height: 9px;
            width: 168px;
            color: #660066;
        }
        .auto-style27 {
            height: 9px;
            width: 13px;
            color: #660066;
        }
        .auto-style28 {
            height: 9px;
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
            color: #660066;
        }
        .auto-style29 {
            width: 169px;
            height: 24px;
            color: #660066;
        }
        .auto-style30 {
            width: 15px;
            height: 24px;
            color: #660066;
        }
        .auto-style31 {
            height: 24px;
            color: #660066;
        }
        .auto-style32 {
            width: 13px;
            height: 24px;
            color: #660066;
        }
        .auto-style34 {
            text-align: center;
            color: #660066;
        }
        .auto-style35 {
            width: 256px;
            text-align: left;
            color: #660066;
        }
        .auto-style37 {
            width: 796px;
            text-align: right;
            height: 24px;
            color: #660066;
        }
        .auto-style38 {
            width: 796px;
            text-align: right;
            height: 17px;
            color: #660066;
        }
        .auto-style39 {
            height: 17px;
        }
        .auto-style40 {
            width: 13px;
            height: 17px;
            color: #660066;
        }
        .auto-style41 {
            width: 15px;
            height: 17px;
            color: #660066;
        }
        .auto-style42 {
            width: 169px;
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br class="auto-style20" />
        <table align="center" class="style28">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Search a Student by Name or StudentID:</td>
                <td class="auto-style15">
                    <asp:Button ID="btnSearchStudent" runat="server" 
            onclick="btnSearchStudent_Click" Text="Search Student" Width="113px" Height="27px" 
                        Font-Size="Small" style="font-family: 'Times New Roman', Times, serif" CssClass="auto-style20" />
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style1">&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="style39"></td>
            </tr>
            <tr>
                <td class="auto-style5">Add a new Student:</td>
                <td class="style4">
                    <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" 
            Text="Add Student" Width="96px" Height="24px" Font-Size="Small" 
                        style="font-family: 'Times New Roman', Times, serif" CssClass="auto-style20" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Add a new User</td>
                <td class="auto-style7">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add User" Width="107px" CssClass="auto-style20" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Change/Reset User password</td>
                <td class="style4">
                    <asp:Button ID="Button2" runat="server" Height="22px" Text="Change Password" Width="136px" OnClick="Button2_Click" CssClass="auto-style20" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Add Grant</td>
                <td class="style4">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Add Grant" Width="114px" CssClass="auto-style20" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Manage &amp; Maintain Faculty and Courses:</td>
                <td class="style4">
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        Text="Manage Faculty" Width="120px" CssClass="auto-style20" />
                </td>
            </tr>
        </table>
        <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</span></p>
    <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <p class="auto-style34">
        --------------------------------------------------------------------------------------</p>
    <p class="style2">
        <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style14">&nbsp;&nbsp; </span>
        <span class="auto-style13">*REPORTS*</span></p>
    <table align="center" class="style22">
        <tr>
            <td class="style41"><span class="auto-style20"><b style="font-family: 'Arno Pro Smbd SmText'">Weekly Summary:</b></span><br class="auto-style20" /></td>
            <td class="style42">
                <asp:DropDownList ID="ddlMonth" runat="server" 
            Height="22px" Width="167px" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" CssClass="auto-style20">
                    <asp:ListItem>Please select the month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <br class="auto-style20" /></td>
            <td class="style43"></td>
            <td class="style42">
                <asp:DropDownList ID="ddlweeklyYear" runat="server" 
            
                        Height="22px" Width="167px" OnSelectedIndexChanged="ddlweeklyYear_SelectedIndexChanged" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                <br class="auto-style20" /></td>
            <td class="style44"></td>
            <td class="style45">
                <asp:DropDownList ID="ddlVoucher" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                Width="167px" style="height: 22px" Height="23px" CssClass="auto-style20">
                    <asp:ListItem>Please select voucher</asp:ListItem>
                    <asp:ListItem Value="PetrolVouchers">Petrol Voucher</asp:ListItem>
                    <asp:ListItem Value="FoodVouchers">Food  Voucher</asp:ListItem>
                    <asp:ListItem Value="TrainTickets">Train  Tickets</asp:ListItem>
                    <asp:ListItem Value="Hardship">Hardship </asp:ListItem>
                    <asp:ListItem>Advice</asp:ListItem>
                </asp:DropDownList>
                <br class="auto-style20" /></td>
        </tr>
        <tr>
            <td class="style41"></td>
            <td class="style42"></td>
            <td class="style43"></td>
            <td class="style42"></td>
            <td class="style44"></td>
            <td class="style45"></td>
        </tr>
        <tr>
            <td class="auto-style38"><strong>Monthly Summar</strong>y</td>
            <td class="auto-style39">
                <asp:DropDownList ID="ddlMonth1" runat="server" CssClass="auto-style20">
                    <asp:ListItem>Please select the month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style39">
                <asp:DropDownList ID="ddlweeklyYear1" runat="server" Height="22px" Width="167px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style41"></td>
            <td class="auto-style42">
                <asp:DropDownList ID="ddlVoucher1" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" Width="166px" CssClass="auto-style20">
                    <asp:ListItem>Please select  voucher</asp:ListItem>
                    <asp:ListItem Value="PetrolVouchers">Petrol Voucher</asp:ListItem>
                    <asp:ListItem Value="FoodVouchers">Food Voucher</asp:ListItem>
                    <asp:ListItem Value="TrainTickets">Train Tickets</asp:ListItem>
                    <asp:ListItem>Hardship</asp:ListItem>
                    <asp:ListItem>Advice</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37"><strong>Yearly Summary</strong></td>
            <td class="style42">
                <asp:DropDownList ID="ddlweeklyYear2" runat="server" Height="20px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43"></td>
            <td class="style42">
                <asp:DropDownList ID="ddlVoucher2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVoucher2_SelectedIndexChanged" Height="20px" CssClass="auto-style20" Width="163px">
                    <asp:ListItem>Please select  voucher</asp:ListItem>
                    <asp:ListItem Value="PetrolVouchers">Petrol Voucher</asp:ListItem>
                    <asp:ListItem Value="FoodVouchers">Food Voucher</asp:ListItem>
                    <asp:ListItem Value="TrainTickets">Train Tickets</asp:ListItem>
                    <asp:ListItem>Hardship</asp:ListItem>
                    <asp:ListItem>Advice</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style44"></td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="style41"></td>
            <td class="style42"></td>
            <td class="style43"></td>
            <td class="style42"></td>
            <td class="style44"></td>
            <td class="style45"></td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;Monthly Grant Summary:</td>
            <td class="style26">
                <asp:DropDownList ID="ddlGrantMonth" runat="server" 
            Width="167px" 
            Height="22px" CssClass="auto-style20">
                    <asp:ListItem>Please select the month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <br class="auto-style20" /></td>
            <td class="style34"></td>
            <td class="style26">
                <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                <br class="auto-style20" /></td>
            <td class="style36"></td>
            <td class="style27"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="style38"><span class="auto-style20"><b style="font-family: 'Arno Pro Smbd SmText'">Monthly Campus-Grant Summary:</b></span><br class="auto-style20" /></td>
            <td class="style24">
                <asp:DropDownList ID="DDMonthCampus" runat="server" 
            Width="167px" 
                        Height="22px" CssClass="auto-style20">
                    <asp:ListItem>Please select the month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">Febrauary</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <br class="auto-style20" /></td>
            <td class="auto-style21">&nbsp;</td>
            <td class="style24">
                <asp:DropDownList ID="DDYearCampus" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DDYearCampus_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style9"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style17">Monthly Campus Summary:</td>
            <td class="style24">
                <asp:DropDownList ID="DDcampusmonth" runat="server" 
            Width="167px" 
                        Height="22px" CssClass="auto-style20">
                    <asp:ListItem>Please select the month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">Febrauary</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style21">&nbsp;</td>
            <td class="style24">
                <asp:DropDownList ID="DDcampusyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DDcampusyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">Monthly Faculty Grant Summary:</td>
            <td class="style24">
                <asp:DropDownList ID="ddlmonthfacultybygrantmonth" runat="server" 
             Width="167px" 
            Height="22px" CssClass="auto-style20">
                    <asp:ListItem>Please select the month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style21">&nbsp;</td>
            <td class="style24">
                <asp:DropDownList ID="ddlYearfacultybygrantYear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlYearfacultybygrant_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">Monthly
                    Faculty&nbsp; Summary:</td>
            <td class="style47">
                <asp:DropDownList ID="ddlFacultyMonth" runat="server" 
             Width="167px" 
            Height="22px" CssClass="auto-style20">
                    <asp:ListItem>Please select the month</asp:ListItem>
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">February</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style48"></td>
            <td class="style47">
                <asp:DropDownList ID="ddlfacultyyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlfacultyyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style49"></td>
            <td class="style50"></td>
        </tr>
        <tr>
            <td class="style46"></td>
            <td class="style47">
            </td>
            <td class="style48"></td>
            <td class="style47">
            </td>
            <td class="style49"></td>
            <td class="style50"></td>
        </tr>
        <tr>
            <td class="auto-style22">Age Summary:</td>
            <td class="style47">
                <asp:DropDownList ID="ddlFacultyAge" runat="server" AutoPostBack="True" Height="21px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Width="162px" CssClass="auto-style20">
                    <asp:ListItem>Please enter age</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                    <asp:ListItem>32</asp:ListItem>
                    <asp:ListItem>33</asp:ListItem>
                    <asp:ListItem>34</asp:ListItem>
                    <asp:ListItem>35</asp:ListItem>
                    <asp:ListItem>36</asp:ListItem>
                    <asp:ListItem>37</asp:ListItem>
                    <asp:ListItem>38</asp:ListItem>
                    <asp:ListItem>39</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style48"></td>
            <td class="style47">
            </td>
            <td class="style49"></td>
            <td class="style50"></td>
        </tr>
        <tr>
            <td class="style46"></td>
            <td class="style47">
                </td>
            <td class="style48"></td>
            <td class="style47">
                </td>
            <td class="style49"></td>
            <td class="style50"></td>
        </tr>
        <tr>
            <td class="auto-style22">Ethinicity Summary</td>
            <td class="style47">
                <asp:DropDownList ID="ddlEthinicity" runat="server" Height="19px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged2" Width="164px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Main_Ethnicity" DataValueField="Main_Ethnicity" CssClass="auto-style20">
                    <asp:ListItem Selected="True">Please enter Ethinicity</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT distinct [Main_Ethnicity] FROM [Student_Registration_Form]"></asp:SqlDataSource>
            </td>
            <td class="style48"></td>
            <td class="style47">
            </td>
            <td class="style49"></td>
            <td class="style50"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">Year-to-date Summary:</td>
            <td class="style24">
                <asp:DropDownList ID="ddlYeartodateyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlYeartodateyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style20">
                    <asp:ListItem>Please select the year</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style33">
                <br class="auto-style20" />
            </td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">Grants by Selected Date:</td>
            <td class="style24" colspan="5">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                        Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" 
                        onselectionchanged="Calendar1_SelectionChanged" 
                        style="height: 173px; width: 255px; text-align: left" TitleFormat="Month" 
                        Width="228px">
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                            Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TodayDayStyle BackColor="#CCCC99" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                            ForeColor="#333333" Height="10pt" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                            ForeColor="White" Height="14pt" />
                </asp:Calendar>
            </td>
        </tr>
    </table>
</asp:Content>

