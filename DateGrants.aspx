<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DateGrants.aspx.cs" Inherits="DateGrants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
&nbsp;<center>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." 
        style="height: 133px; width: 593px" AllowPaging="True" AllowSorting="True" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <Columns>
            <asp:BoundField DataField="student_ID" HeaderText="student_ID" 
                SortExpression="student_ID" />
            <asp:BoundField DataField="GrantType" HeaderText="GrantType" 
                SortExpression="GrantType" />
            <asp:BoundField DataField="GrantDescription" HeaderText="GrantDescription" 
                SortExpression="GrantDescription" />
            <asp:BoundField DataField="GrantValue" HeaderText="GrantValue" 
                SortExpression="GrantValue" />
            <asp:BoundField DataField="DateOfIssue" HeaderText="DateOfIssue" 
                SortExpression="DateOfIssue" />
            <asp:BoundField DataField="KuhaFunds" HeaderText="KuhaFunds" 
                SortExpression="KuhaFunds" />
            <asp:BoundField DataField="Refno" HeaderText="Refno" ReadOnly="True" 
                SortExpression="Refno" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    </p>
    </center>
    <br />
    <asp:TextBox ID="Txbdate" runat="server"  
        Visible="False"></asp:TextBox>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [student_ID], [GrantType], [GrantDescription], [GrantValue], DATEADD(DD,0,DATEDIFF(DD,0,Dateofissue)) as Dateofissue, 
[KuhaFunds], [Refno] 
FROM [Student_vouchers] 
WHERE DATEADD(DD,0,DATEDIFF(DD,0,Dateofissue)) = @DateOfIssue">
        <SelectParameters>
            <asp:ControlParameter ControlID="Txbdate" DefaultValue="%" Name="DateOfIssue" 
                PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

