<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Monthlycampussummary.aspx.cs" Inherits="Monthlycampussummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <asp:Label ID="TitleTXT" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#993300" Text="TitleTXT"></asp:Label>
    </p>
    <p>
        <br />
    </p>
    <center>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical" 
            style="height: 133px; width: 421px">
            <Columns>
                <asp:BoundField DataField="campus" HeaderText="campus" 
                    SortExpression="campus" />
                <asp:BoundField DataField="CurrentMonth" HeaderText="CurrentMonth" 
                    ReadOnly="True" SortExpression="CurrentMonth" />
                <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" 
                    ReadOnly="True" SortExpression="TotalStudents" />
                <asp:BoundField DataField="TotalGrants" HeaderText="TotalGrants" 
                    ReadOnly="True" SortExpression="TotalGrants" />
                <asp:BoundField DataField="VoucherAmount" HeaderText="VoucherAmount" 
                    SortExpression="VoucherAmount" ReadOnly="True" />
                <asp:BoundField DataField="HardshipAmount" HeaderText="HardshipAmount" 
                    ReadOnly="True" SortExpression="HardshipAmount" />
                <asp:BoundField DataField="Funds" HeaderText="Funds" 
                    SortExpression="Funds" ReadOnly="True" />
                <asp:BoundField DataField="KohaFunds" HeaderText="KohaFunds" ReadOnly="True" 
                    SortExpression="KohaFunds" />
                <asp:BoundField DataField="Totalamount" HeaderText="Totalamount" 
                    ReadOnly="True" SortExpression="Totalamount" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="select Total.campus,CurrentMonth,TotalStudents,TotalGrants,VoucherAmount,HardshipAmount,Funds,KohaFunds,Totalamount from 
(
select datename(MONTH,A.DateOfIssue) as CurrentMonth, COUNT(distinct A.student_ID) as TotalStudents,
 COUNT( A.student_ID) as TotalGrants,
  SUM(Grantvalue) as Funds,
  SUM(ISNULL(KuhaFunds,0)) as KohaFunds,
 (SUM(Grantvalue)+sum(ISNULL(KuhaFunds,0))) as Totalamount, B.campus 
 from Student_vouchers as A join Student_Registration_Form as B on A.student_ID=B.Student_ID 
 where MONTH(A.DateOfIssue)=@Month and year(A.DateOfIssue)=@Year
group by datename(MONTH,A.DateOfIssue),campus) as Total join
(
select B.campus,SUM(GrantValue) as VoucherAmount  from student_vouchers as A join Student_Registration_Form as B
on
A.student_ID=B.Student_ID
where GrantType in ('PetrolVouchers','FoodVouchers','TrainTickets','Advice') 
and MONTH(A.DateOfIssue)=@Month and year(A.DateOfIssue)=@Year
group by Month(A.DateOfIssue),campus
) as Voucher
on Total.campus=Voucher.campus join
(
select B.campus,SUM(GrantValue) as HardshipAmount  from student_vouchers as A join Student_Registration_Form as B
on
A.student_ID=B.Student_ID
where GrantType in ('Hardship') 
and MONTH(A.DateOfIssue)=@Month and year(A.DateOfIssue)=@Year
group by Month(A.DateOfIssue),campus
) as Harship on
Harship.campus=Total.campus
">
            <SelectParameters>
                <asp:ControlParameter ControlID="txbRead" DefaultValue="%" Name="Month" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="txbReadYear" DefaultValue="%" Name="Year" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </center>
    <p>
        <asp:TextBox ID="txbRead" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txbReadYear" runat="server" Visible="False"></asp:TextBox>
    </p>
    <p>
    </p>
    </asp:Content>

