<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MonthlyGrantSummary.aspx.cs" Inherits="MonthlyGrantSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        p
        p.center
        .style2
        {
            text-align: center;
            width: 4px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <asp:Label ID="TitleTxt" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="#993300" Text="TitleTxt"></asp:Label>
    </p>
    <p class="center">&nbsp;</p>
     <center>
        <p> 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                        GridLines="Vertical" style="text-align: center" 
                        EmptyDataText="Sorry, there is no data to display..!!" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="GrantType" HeaderText="GrantType" 
                                SortExpression="GrantType" />
                            <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" 
                                ReadOnly="True" SortExpression="TotalStudents" />
                            <asp:BoundField DataField="TotalGrants" HeaderText="TotalGrants" 
                                ReadOnly="True" SortExpression="TotalGrants" />
                            <asp:BoundField DataField="Funds" HeaderText="Funds" 
                                ReadOnly="True" SortExpression="Funds" />
                            <asp:BoundField DataField="KohaFunds" HeaderText="KohaFunds" ReadOnly="True" 
                                SortExpression="KohaFunds" />
                            <asp:BoundField DataField="TotalGrantSum" HeaderText="TotalGrantSum" 
                                ReadOnly="True" SortExpression="TotalGrantSum" />
                            <asp:BoundField DataField="MonthName" HeaderText="MonthName" ReadOnly="True" 
                                SortExpression="MonthName" />
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
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </p>
    <p style="text-align: center">
                    <asp:Label ID="lblMsgfunds" runat="server"></asp:Label>
                </p>
    <p style="text-align: center">
                    <asp:Label ID="lblMsgKohafunds" runat="server"></asp:Label>
                </p>
<p style="text-align: center">
    &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
        
        
            
            
            
        
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" SelectCommand="select GrantType,count(distinct student_ID) as TotalStudents, count(Student_ID) as TotalGrants,
SUM(grantvalue) as Funds, sum(ISNULL (Kuhafunds, 0)) as KohaFunds, (SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum,
DATENAME(month,DateOfIssue) as MonthName
from Student_vouchers 
where MONTH(DateOfIssue)=@Month and Year(DateOfIssue)=@year
group by GrantType,DATENAME(month,DateOfIssue),MONTH(DateOfIssue)
order by MonthName">
        <SelectParameters>
            <asp:ControlParameter ControlID="txbRead" Name="Month" PropertyName="Text" />
            <asp:ControlParameter ControlID="txbReadYear" DefaultValue="%" Name="Year" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
<p>
    &nbsp;</p>
    <p>
    <asp:TextBox ID="txbRead" runat="server" 
        Visible="False"></asp:TextBox>
    <asp:TextBox ID="txbReadYear" runat="server"  
        Visible="False"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

