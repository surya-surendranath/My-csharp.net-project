<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AgeSummary.aspx.cs" Inherits="AgeSummary" %>

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
            ForeColor="#993300" Text="TitleTxt" Visible="False"></asp:Label>
    </p>
    &nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 525px" Width="541px" EmptyDataText="Sorry, No data to display..!!">
        <Columns>
            <asp:BoundField DataField="Age" HeaderText="Age" />
            <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" ReadOnly="True" SortExpression="TotalStudents" />
            <asp:BoundField DataField="Funds" HeaderText="Funds" ReadOnly="True" SortExpression="Funds" />
            <asp:BoundField DataField="KohaFunds" HeaderText="KohaFunds" ReadOnly="True" SortExpression="KohaFunds" />
            <asp:BoundField DataField="TotalGrantSum" HeaderText="TotalGrantSum" ReadOnly="True" SortExpression="TotalGrantSum" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    </asp:GridView>
     <center>
        <p> 
                    &nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT COUNT(DISTINCT student_ID) AS TotalStudents, SUM(GrantValue) AS Funds, SUM(ISNULL(KuhaFunds, 0)) AS KohaFunds, SUM(GrantValue) + SUM(ISNULL(KuhaFunds, 0)) AS TotalGrantSum FROM Student_vouchers WHERE (Age = @Age)">
                        <SelectParameters>
                            <asp:Parameter Name="Age" />
                        </SelectParameters>
                    </asp:SqlDataSource>
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
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ok" Width="74px" />
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
        
        
            
            
            
        
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" SelectCommand="SELECT Age, COUNT(DISTINCT student_ID) AS TotalStudents, SUM(GrantValue) AS Funds, SUM(ISNULL(KuhaFunds, 0)) AS KohaFunds, SUM(GrantValue) + SUM(ISNULL(KuhaFunds, 0)) AS TotalGrantSum FROM Student_vouchers WHERE (Age = @Age) GROUP BY Age"
>
        <SelectParameters>
            <asp:ControlParameter ControlID="txbRead" Name="Age" PropertyName="Text" />
           
                
        </SelectParameters>
    </asp:SqlDataSource>
<p>
    &nbsp;</p>
    <p>
    <asp:TextBox ID="txbRead" runat="server" 
        Visible="False"></asp:TextBox>
    
</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>


