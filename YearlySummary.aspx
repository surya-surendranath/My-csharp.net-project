<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="YearlySummary.aspx.cs" Inherits="YearlySummary" %>

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
                    <asp:BoundField DataField="Year" HeaderText="Year" />
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
     

    <p>
        <asp:TextBox ID="txbReadVoucher" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txbReadWeeklyYear" runat="server" Visible="False" OnTextChanged="txbReadWeeklyYear_TextChanged"></asp:TextBox>
        <asp:TextBox ID="txbReadMonth" runat="server" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
         

    </p>
    <p style="text-align: center">
        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Ok" Width="76px" style="margin-bottom: 124px" />
    </p>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
            
            
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" 
        SelectCommand="SELECT GrantType, YEAR(DateOfIssue) AS Year, COUNT(DISTINCT student_ID) AS NoofStudents, COUNT(student_ID) AS NoofGrants, SUM(GrantValue) AS Amount, SUM(ISNULL(KuhaFunds, 0)) AS KohafundsAmount, SUM(GrantValue) + SUM(ISNULL(KuhaFunds, 0)) AS TotalGrantAmount FROM Student_vouchers WHERE (YEAR(DateOfIssue) = @Year) AND (GrantType = @Voucher) GROUP BY GrantType, YEAR(DateOfIssue)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txbReadWeeklyYear" DefaultValue="%" 
                    Name="Year" PropertyName="Text" />
            <asp:ControlParameter ControlID="txbReadVoucher" DefaultValue="%" 
                    Name="Voucher" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
</asp:Content>

