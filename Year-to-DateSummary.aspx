<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Year-to-DateSummary.aspx.cs" Inherits="Year_to_DateSummary" %>

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
            
            
            
            
            style="height: 157px; width: 147px">
            <Columns>
                <asp:BoundField DataField="Granttype" HeaderText="Granttype" 
                    SortExpression="Granttype" />
                <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" ReadOnly="True" 
                    SortExpression="TotalStudents" />
                <asp:BoundField DataField="TotalGrants" HeaderText="TotalGrants" 
                    ReadOnly="True" SortExpression="TotalGrants" />
                <asp:BoundField DataField="GrantAmount" 
                    HeaderText="GrantAmount" ReadOnly="True" 
                    SortExpression="GrantAmount" />
                <asp:BoundField DataField="KohaGrantAmount" HeaderText="KohaGrantAmount" 
                    ReadOnly="True" SortExpression="KohaGrantAmount" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
         SelectCommand="select Granttype,COUNT(distinct student_ID) as TotalStudents,
COUNT(student_ID) as TotalGrants,
SUM(grantvalue) as GrantAmount,
SUM(ISNULL(kuhafunds,0)) as KohaGrantAmount,
SUM(grantvalue)+SUM(ISNULL(kuhafunds,0)) as TotalGrantAmount
from Student_vouchers
where YEAR(DateOfIssue)=@Year
group by granttype">
        <SelectParameters>
            <asp:ControlParameter ControlID="txbYear" DefaultValue="%" Name="Year" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p style="text-align: center">
        <asp:Label ID="TotalSum" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="TotalGrants" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Totalstudents" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:TextBox ID="txbYear" runat="server" Visible="False"></asp:TextBox>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
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
    <p>
    </p>
</asp:Content>

