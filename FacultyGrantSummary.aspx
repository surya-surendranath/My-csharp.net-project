<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FacultyGrantSummary.aspx.cs" Inherits="FacultyGrantSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <asp:Label ID="TitleTXT" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#990000" Text="TitleTXT"></asp:Label>
    </p>
    <p style="text-align: center">
    </p>
    <center>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical" 
            style="height: 157px; margin-left: 0px;" AllowPaging="True" 
            AllowSorting="True" Width="661px" 
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
                <asp:BoundField DataField="Totalamount" HeaderText="Totalamount" 
                    ReadOnly="True" SortExpression="Totalamount" />
                <asp:BoundField DataField="faculty" HeaderText="faculty" 
                    SortExpression="faculty" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        </p>
        </center>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="select GrantType,datename(MONTH,A.DateOfIssue) as CurrentMonth, COUNT(distinct A.student_ID) as TotalStudents,
 COUNT( A.student_ID) as TotalGrants,
 SUM(Grantvalue+ISNULL(KuhaFunds,0)) as Totalamount, B.faculty 
 from Student_vouchers as A join Student_Registration_Form as B on A.student_ID=B.Student_ID 
 where MONTH(A.DateOfIssue)=@Month and Year(A.DateOfIssue)=@Year
group by datename(MONTH,A.DateOfIssue),faculty,GrantType">
            <SelectParameters>
                <asp:ControlParameter ControlID="TxbFacultyMonth" DefaultValue="%" Name="Month" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TxbFacultyYear" DefaultValue="%" Name="Year" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:TextBox ID="TxbFacultyMonth" runat="server" Visible="False"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TxbFacultyYear" runat="server" Visible="False"></asp:TextBox>
    </p>
    </asp:Content>

