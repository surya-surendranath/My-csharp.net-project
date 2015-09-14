<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WeeklySummary.aspx.cs" Inherits="PetrolMonthlySummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="text-align: center">
        <asp:Label ID="Titletext" runat="server" Text="Titletext" Font-Size="Large" 
            Font-Bold="True" ForeColor="#993300" Visible="False"></asp:Label>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
        <center>
        <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataSourceID="SqlDataSource1" 
            EmptyDataText="Sorry, No data to display..!!" ForeColor="Black" 
            GridLines="Vertical" 
                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
                BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="GrantType" HeaderText="GrantType" 
                    SortExpression="GrantType" />
                <asp:BoundField DataField="month_name" HeaderText="month_name" ReadOnly="True" 
                    SortExpression="month_name" />
                <asp:BoundField DataField="weeknumber" HeaderText="weeknumber" ReadOnly="True" 
                    SortExpression="weeknumber" />
                <asp:BoundField DataField="NoofStudents" HeaderText="NoofStudents" 
                    ReadOnly="True" SortExpression="NoofStudents" />
                <asp:BoundField DataField="NoofGrants" HeaderText="NoofGrants" ReadOnly="True" 
                    SortExpression="NoofGrants" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" ReadOnly="True" 
                    SortExpression="Amount" />
                <asp:BoundField DataField="KohafundsAmount" HeaderText="KohafundsAmount" 
                    ReadOnly="True" SortExpression="KohafundsAmount" />
                <asp:BoundField DataField="TotalGrantAmount" HeaderText="TotalGrantAmount" 
                    ReadOnly="True" SortExpression="TotalGrantAmount" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        </p>
        </center>
    <p style="text-align: center">
                    <asp:Label ID="lblAllMsg" runat="server"></asp:Label>
                </p>
    <p style="text-align: center">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
&nbsp;</p>
    <p style="text-align: center">
        <asp:Label ID="lblMsgfunds" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="lblMsgKohafunds" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:TextBox ID="txbReadVoucher" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txbReadWeeklyYear" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txbReadMonth" runat="server" Visible="False"></asp:TextBox>
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
            
            
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" 
        SelectCommand="select GrantType,DATENAME(MONTH,DateOfIssue) as month_name
,datediff(week,CONVERT(char, DateOfIssue - (DAY(DateOfIssue) - 1),101),DateOfIssue)+1 as weeknumber,
count(distinct student_ID) as NoofStudents,count(student_ID) as NoofGrants,SUM(grantvalue) as Amount,SUM(isnull(KuhaFunds,0)) as KohafundsAmount,
(SUM(grantvalue)+SUM(isnull(KuhaFunds,0))) as TotalGrantAmount
from Student_vouchers
 where Year(DateOfIssue)=@Year  and month(DateOfIssue)=@monthnumber and GrantType=@Voucher 
group by GrantType,DATENAME(MONTH,DateOfIssue),
datediff(week,CONVERT(char, DateOfIssue - (DAY(DateOfIssue) - 1),101),DateOfIssue)+1
order by datediff(week,CONVERT(char, DateOfIssue - (DAY(DateOfIssue) - 1),101),DateOfIssue)+1">
            <SelectParameters>
                <asp:ControlParameter ControlID="txbReadWeeklyYear" DefaultValue="%" 
                    Name="Year" PropertyName="Text" />
                <asp:ControlParameter ControlID="txbReadMonth" DefaultValue="%" Name="monthnumber" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txbReadVoucher" DefaultValue="%" 
                    Name="Voucher" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    <p>
        &nbsp;</p>
</asp:Content>

