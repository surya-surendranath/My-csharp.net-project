<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MonthCampusGrantSummary.aspx.cs" Inherits="MonthCampusSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <p > 
                    <asp:Label ID="TitleTXT" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#993300" Text="TitleTXT"></asp:Label>
        </p>
        <p > 
                    &nbsp;</p>
       <p > 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                        GridLines="Vertical" AllowPaging="True" 
                        EmptyDataText="Sorry, No data to display..!!">
                        <Columns>
                            <asp:BoundField DataField="GrantType" HeaderText="GrantType" 
                                SortExpression="GrantType" />
                            <asp:BoundField DataField="CurrentMonth" HeaderText="CurrentMonth" 
                                ReadOnly="True" SortExpression="CurrentMonth" />
                            <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" 
                                ReadOnly="True" SortExpression="TotalStudents" />
                            <asp:BoundField DataField="TotalGrants" HeaderText="TotalGrants" 
                                ReadOnly="True" SortExpression="TotalGrants" />
                            <asp:BoundField DataField="Funds" HeaderText="Funds" 
                                ReadOnly="True" SortExpression="Funds" />
                            <asp:BoundField DataField="KohaFunds" HeaderText="KohaFunds" 
                                SortExpression="KohaFunds" ReadOnly="True" />
                            <asp:BoundField DataField="GrantAmount" HeaderText="GrantAmount" 
                                ReadOnly="True" SortExpression="GrantAmount" />
                            <asp:BoundField DataField="campus" HeaderText="campus" 
                                SortExpression="campus" />
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
                    <asp:Label ID="lblstudent" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
    <p style="text-align: center">
    <br />
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
        
        
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" 
        SelectCommand="select A.GrantType,datename(MONTH,A.DateOfIssue) as CurrentMonth,count(distinct A.Student_ID) as TotalStudents,COUNT( A.student_ID) as TotalGrants,
 SUM(Grantvalue) as Funds,
  SUM(ISNULL(KuhaFunds,0)) as KohaFunds,
 (SUM(Grantvalue)+sum(ISNULL(KuhaFunds,0))) as GrantAmount, B.campus
 from Student_vouchers as A join Student_Registration_Form as B
on A.student_ID=B.Student_ID
where MONTH(A.DateOfIssue)=@month and YEAR(A.DateOfIssue)=@Year
group by GrantType,datename(MONTH,A.DateOfIssue),campus
order by campus">
        <SelectParameters>
            <asp:ControlParameter ControlID="txbRead" DefaultValue="%" Name="month" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txbReadYear" DefaultValue="%" Name="Year" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:TextBox ID="txbRead" runat="server" Visible="False"></asp:TextBox>
    <asp:TextBox ID="txbReadYear" runat="server" Visible="False"></asp:TextBox>
</p>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>

