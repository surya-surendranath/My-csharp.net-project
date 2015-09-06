<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GrantSummary.aspx.cs" Inherits="GrantSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
    .style4
    {
        width: 256px;
        text-align: left;
    }
    .style22
    {
        width: 795px;
            
            height: 531px;
        }
    .style24
    {
        }
    .style25
    {
        width: 169px;
    }
    .style26
    {
            height: 9px;
            width: 168px;
        }
    .style27
    {
        height: 9px;
        width: 169px;
    }
    .style28
    {
        width: 565px;
            height: 85px;
        }
    .style29
    {
        width: 276px;
        text-align: right;
            font-weight: bold;
            font-family: "Arno Pro SmText";
        }
    .style30
    {
            width: 276px;
            height: 32px;
            font-weight: 700;
            font-family: "Arno Pro Smbd SmText";
            text-align: right;
        }
    .style31
    {
        width: 256px;
        text-align: left;
        height: 32px;
    }
        .style32
        {
            height: 9px;
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
        }
        .style33
        {
            width: 13px;
        }
        .style34
        {
            height: 9px;
            width: 13px;
        }
        .style35
        {
            width: 15px;
        }
        .style36
        {
            height: 9px;
            width: 15px;
        }
        .style37
        {
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
        }
        .style38
        {
            width: 796px;
            text-align: right;
        }
        .style39
        {
            width: 256px;
            height: 12px;
        }
        .style40
        {
            width: 276px;
            height: 12px;
            font-weight: bold;
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
        .style51
        {
            font-family: "Arno Pro Smbd SmText";
            font-weight: bold;
        }
        .auto-style3 {
            text-align: center;
            color: #990099;
        }
        .auto-style4 {
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
            color: #990099;
        }
        .auto-style5 {
            width: 169px;
            color: #990099;
        }
        .auto-style6 {
            width: 15px;
            color: #990099;
        }
        .auto-style7 {
            color: #990099;
        }
        .auto-style8 {
            width: 13px;
            color: #990099;
        }
        .auto-style9 {
            text-align: right;
            width: 796px;
            font-weight: bold;
            height: 26px;
            font-family: "Arno Pro Smbd SmText";
            color: #990099;
        }
        .auto-style10 {
            width: 796px;
            text-align: right;
            color: #990099;
        }
        .auto-style11 {
            height: 9px;
            width: 169px;
            color: #990099;
        }
        .auto-style12 {
            height: 9px;
            width: 15px;
            color: #990099;
        }
        .auto-style13 {
            height: 9px;
            width: 168px;
            color: #990099;
        }
        .auto-style14 {
            height: 9px;
            width: 13px;
            color: #990099;
        }
        .auto-style15 {
            height: 9px;
            text-align: right;
            width: 796px;
            font-weight: bold;
            font-family: "Arno Pro Smbd SmText";
            color: #990099;
        }
        .auto-style16 {
            width: 169px;
            height: 24px;
            color: #990099;
        }
        .auto-style17 {
            width: 15px;
            height: 24px;
            color: #990099;
        }
        .auto-style18 {
            height: 24px;
            color: #990099;
        }
        .auto-style19 {
            width: 13px;
            height: 24px;
            color: #990099;
        }
        .auto-style20 {
            text-align: right;
            color: #990099;
        }
        .auto-style21 {
            font-family: "Arno Pro Smbd SmText";
            font-weight: bold;
            color: #990099;
        }
        .auto-style22 {
            width: 276px;
            text-align: right;
            font-weight: bold;
            font-family: "Arno Pro SmText";
            color: #990099;
        }
        .auto-style23 {
            width: 276px;
            height: 32px;
            font-weight: 700;
            font-family: "Arno Pro Smbd SmText";
            text-align: right;
            color: #990099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br class="auto-style7" />
        <table align="center" class="style28">
            <tr>
                <td class="auto-style23">
                    Search a Student by Name or StudentID:</td>
                <td class="style31">
        <asp:Button ID="btnSearchStudent" runat="server" 
            onclick="btnSearchStudent_Click" Text="Search Student" Width="96px" Height="24px" 
                        Font-Size="Small" style="font-family: 'Times New Roman', Times, serif" CssClass="auto-style7" />
                </td>
            </tr>
            <tr>
                <td class="style40">
                </td>
                <td class="style39">
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    Add a new Student:</td>
                <td class="style4">
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" 
            Text="Add Student" Width="96px" Height="24px" Font-Size="Small" 
                        style="font-family: 'Times New Roman', Times, serif" CssClass="auto-style7" />
                </td>
            </tr>
            </table>
        <span class="auto-style7">&nbsp;</span></p>
<p class="auto-style3">
        --------------------------------------------------------------------------------------</p>
    <p class="style2">
        <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <span class="auto-style21">*REPORTS*</span></p>
        
        
        <table align="center" class="style22">
            <tr>
                <td class="style41">
                    <span class="auto-style7">
                    <b style="font-family: 'Arno Pro Smbd SmText'">Weekly Summary:</b></span><br class="auto-style7" />
                </td>
                <td class="style42">
                    <asp:DropDownList ID="ddlMonth" runat="server" 
            Height="22px" Width="167px" CssClass="auto-style7">
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
                    <br class="auto-style7" />
                </td>
                <td class="style43">
                    </td>
                <td class="style42">
        <asp:DropDownList ID="ddlweeklyYear" runat="server" 
            
                        Height="22px" Width="167px" CssClass="auto-style7">
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
                    <br class="auto-style7" />
                </td>
                <td class="style44">
                    </td>
                <td class="style45">
            <asp:DropDownList ID="ddlVoucher" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                Width="167px" style="height: 22px" Height="23px" CssClass="auto-style7">
                <asp:ListItem>Please select voucher</asp:ListItem>
                <asp:ListItem Value="PetrolVouchers">Petrol Voucher</asp:ListItem>
                <asp:ListItem Value="FoodVouchers">Food  Voucher</asp:ListItem>
                <asp:ListItem Value="TrainTickets">Train  Tickets</asp:ListItem>
                <asp:ListItem Value="Hardship">Hardship </asp:ListItem>
                <asp:ListItem>Advice</asp:ListItem>
            </asp:DropDownList>
                    <br class="auto-style7" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <strong>Monthly Summar</strong>y</td>
                <td class="auto-style18">
                <asp:DropDownList ID="ddlMonth1" runat="server" CssClass="auto-style20" Height="25px" Width="171px">
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
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style18">
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
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style16">
                <asp:DropDownList ID="ddlVoucher1" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" Width="169px" CssClass="auto-style20">
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
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <strong>Yearly Summary</strong></td>
                <td class="auto-style18">
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
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style18">
                <asp:DropDownList ID="ddlVoucher2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVoucher2_SelectedIndexChanged" Height="18px" CssClass="auto-style20" Width="167px">
                    <asp:ListItem>Please select  voucher</asp:ListItem>
                    <asp:ListItem Value="PetrolVouchers">Petrol Voucher</asp:ListItem>
                    <asp:ListItem Value="FoodVouchers">Food Voucher</asp:ListItem>
                    <asp:ListItem Value="TrainTickets">Train Tickets</asp:ListItem>
                    <asp:ListItem>Hardship</asp:ListItem>
                    <asp:ListItem>Advice</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;Monthly Grant Summary:</td>
                <td class="style26">
        <asp:DropDownList ID="ddlGrantMonth" runat="server" 
            Width="167px" 
            Height="22px" CssClass="auto-style7">
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
                    <br class="auto-style7" />
                </td>
                <td class="style34">
                    </td>
                <td class="style26">
        <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style7">
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
                    <br class="auto-style7" />
                </td>
                <td class="style36">
                    </td>
                <td class="style27">
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style38">
                    <span class="auto-style7">
                    <b style="font-family: 'Arno Pro Smbd SmText'">Monthly Campus-Grant Summary:</b></span><br class="auto-style7" />
                </td>
                <td class="style24">
        <asp:DropDownList ID="DDMonthCampus" runat="server" 
            Width="167px" 
                        Height="22px" CssClass="auto-style7">
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
                    <br class="auto-style7" />
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="style24">
        <asp:DropDownList ID="DDYearCampus" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DDYearCampus_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style7">
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
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Monthly Campus Summary:</td>
                <td class="style24">
        <asp:DropDownList ID="DDcampusmonth" runat="server" 
            Width="167px" 
                        Height="22px" CssClass="auto-style7">
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
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="style24">
        <asp:DropDownList ID="DDcampusyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DDcampusyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style7">
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
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Monthly Faculty Grant Summary:</td>
                <td class="style24">
        <asp:DropDownList ID="ddlmonthfacultybygrantmonth" runat="server" 
             Width="167px" 
            Height="22px" CssClass="auto-style7">
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
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="style24">
        <asp:DropDownList ID="ddlYearfacultybygrantYear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlYearfacultybygrant_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style7">
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
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    Monthly
                    Faculty&nbsp; Summary:</td>
                <td class="style47">
        <asp:DropDownList ID="ddlFacultyMonth" runat="server" 
             Width="167px" 
            Height="22px" CssClass="auto-style7">
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
                <td class="style48">
                    </td>
                <td class="style47">
        <asp:DropDownList ID="ddlfacultyyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlfacultyyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style7">
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
                <td class="style49">
                    </td>
                <td class="style50">
                    </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
                <td class="style48">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
                <td class="style49">
                    &nbsp;</td>
                <td class="style50">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    Age Summary</td>
                <td class="style47">
                <asp:DropDownList ID="ddlFacultyAge" runat="server" AutoPostBack="True" Height="21px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Width="162px" CssClass="auto-style20">
                    <asp:ListItem>Please select age</asp:ListItem>
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
                <td class="style48">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
                <td class="style49">
                    &nbsp;</td>
                <td class="style50">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="style47">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT distinct [Main_Ethnicity] FROM [Student_Registration_Form]"></asp:SqlDataSource>
                    </td>
                <td class="style48">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
                <td class="style49">
                    &nbsp;</td>
                <td class="style50">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    Ethinicity Summary</td>
                <td class="style47">
                <asp:DropDownList ID="ddlEthinicity" runat="server" Height="19px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged2" Width="164px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Main_Ethnicity" DataValueField="Main_Ethnicity" CssClass="auto-style20">
                    <asp:ListItem Selected="True">Please enter Ethinicity</asp:ListItem>
                </asp:DropDownList>
                    </td>
                <td class="style48">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
                <td class="style49">
                    &nbsp;</td>
                <td class="style50">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Year-to-date Summary:</td>
                <td class="style24">
        <asp:DropDownList ID="ddlYeartodateyear" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlYeartodateyear_SelectedIndexChanged" Height="22px" 
                        Width="167px" CssClass="auto-style7">
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
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Grants by Selected Date:</td>
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
        
        
<p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>
   
        <p class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
&nbsp;&nbsp;
            &nbsp;&nbsp;
            &nbsp;
    </p>
<p class="auto-style3">
        &nbsp;</p>
</asp:Content>

