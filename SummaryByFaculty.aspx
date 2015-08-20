<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SummaryByFaculty.aspx.cs" Inherits="SummaryByFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
       <asp:Label ID="TitleTXT" runat="server" Font-Bold="True" Font-Size="Large" 
           ForeColor="#993300" Text="TitleTXT"></asp:Label>
    </p>
    <p></p>
   <center>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical">
            <Columns>
                <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                    SortExpression="Faculty" />
                <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" 
                    ReadOnly="True" SortExpression="TotalStudents" />
                <asp:BoundField DataField="TotalGrants" HeaderText="TotalGrants" 
                    ReadOnly="True" SortExpression="TotalGrants" />
                <asp:BoundField DataField="VoucherAmount" HeaderText="VoucherAmount" 
                    ReadOnly="True" SortExpression="VoucherAmount" />
                <asp:BoundField DataField="HardshipAmount" HeaderText="HardshipAmount" ReadOnly="True" 
                    SortExpression="HardshipAmount" />
                <asp:BoundField DataField="Funds" HeaderText="Funds" 
                    ReadOnly="True" SortExpression="Funds" />
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
        <br />
    </p>
    </center>
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
    <p>
        <asp:TextBox ID="TxbFacultyYear" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TxbFacultyMonth" runat="server" Visible="False"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="
select Total.Faculty,Total.TotalStudents, Total.TotalGrants,VoucherAmount,HardshipAmount ,Total.Funds,KohaFunds,Totalamount
 from
(select B.Faculty,
COUNT(distinct A.student_ID) as TotalStudents,COUNT(B.student_id) as TotalGrants,
SUM(Grantvalue) as Funds,
  SUM(ISNULL(KuhaFunds,0)) as KohaFunds,
  (SUM(Grantvalue)+sum(ISNULL(KuhaFunds,0))) as Totalamount
 from student_vouchers as A join Student_Registration_Form as B
on
A.student_ID=B.Student_ID
where Year(A.DateOfIssue)=@Year and Month(A.DateOfIssue)=@Month
group by B.Faculty) as Total join
(
select B.Faculty,SUM(GrantValue) as VoucherAmount  from student_vouchers as A join Student_Registration_Form as B
on
A.student_ID=B.Student_ID
where GrantType in ('PetrolVouchers','FoodVouchers','TrainTickets','Advice') 
and Year(A.DateOfIssue)=@Year and Month(A.DateOfIssue)=@Month
group by B.Faculty
) as Voucher
on Total.Faculty=Voucher.Faculty join
(
select B.Faculty,SUM(GrantValue) as HardshipAmount  from student_vouchers as A join Student_Registration_Form as B
on
A.student_ID=B.Student_ID
where GrantType in ('Hardship') 
and Year(A.DateOfIssue)=@Year and Month(A.DateOfIssue)=@Month
group by B.Faculty
) as Harship on
Harship.Faculty=Total.Faculty">
            <SelectParameters>
                <asp:ControlParameter ControlID="TxbFacultyYear" DefaultValue="%" Name="Year" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TxbFacultyMonth" DefaultValue="%" Name="Month" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

