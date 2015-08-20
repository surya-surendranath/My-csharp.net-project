<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MonthCampusSummary.aspx.cs" Inherits="MonthCampusSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        &nbsp;</p>
    <p>
        <table style="width:100%; z-index: 1; left: 220px; top: 156px; position: absolute; height: 209px;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="3" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="Black" 
        GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
                        BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="GrantType" HeaderText="GrantType" 
                SortExpression="GrantType" />
            <asp:BoundField DataField="CurrentMonth" HeaderText="CurrentMonth" 
                ReadOnly="True" SortExpression="CurrentMonth" />
            <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" 
                ReadOnly="True" SortExpression="TotalStudents" />
            <asp:BoundField DataField="Totalamount" HeaderText="Totalamount" 
                ReadOnly="True" SortExpression="Totalamount" />
            <asp:BoundField DataField="campus" HeaderText="campus" 
                SortExpression="campus" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblstudent" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblsum" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</p>
    <p>
    <br />
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" SelectCommand="select A.GrantType,Month(A.DateOfIssue) as CurrentMonth,COUNT(distinct A.student_ID) as TotalStudents,
SUM(Grantvalue) as Totalamount, B.campus
 from Student_vouchers as A join Student_Registration_Form as B
on A.student_ID=B.Student_ID
where MONTH(A.DateOfIssue)=@month
group by GrantType,Month(A.DateOfIssue),campus">
        <SelectParameters>
            <asp:ControlParameter ControlID="txbRead" DefaultValue="%" Name="month" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="TotalAmount" runat="server" 
        style="z-index: 1; left: 370px; top: 377px; position: absolute; width: 47px; right: 678px;"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:TextBox ID="txbRead" runat="server" Visible="False"></asp:TextBox>
</p>
<p>
    <asp:TextBox ID="TotalStudents" runat="server" 
        style="z-index: 1; left: 273px; top: 380px; position: absolute; width: 47px; right: 775px"></asp:TextBox>
</p>
</asp:Content>

