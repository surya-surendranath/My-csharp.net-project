<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Studentgrantviewuser.aspx.cs" Inherits="Studentgrantviewuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 14px;
        }
        .style2
        {
            width: 705px;
        }
        .auto-style3 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
<p class="auto-style3">
    <table class="center" style="width:59%;" align="center">
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td style="text-align: center" class="style2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="student_ID,Refno" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                        ForeColor="Black" GridLines="Vertical">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" Runat="server" 
            OnClientClick="return confirm('Are you sure you want to delete this record?');"
            CommandName="Delete">Delete Grant</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                        <asp:BoundField DataField="Refno" HeaderText="Refno" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Refno" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td style="text-align: center" class="style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td style="text-align: center" class="style2">
                <asp:Button ID="btnGrant" runat="server" onclick="btnGrant_Click" 
            Text="Add Grant" style="font-family: 'Times New Roman', Times, serif; color: #993366; font-weight: 700;" Height="32px" Width="100px" />
            </td>
        </tr>
    </table>
    <br />
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" DeleteCommand="Delete FROM [Student_vouchers] WHERE ([student_ID] = @student_ID)
and RefNo=@RefNo" 
            ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM [Student_vouchers] WHERE ([student_ID] = @student_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txbResult" DefaultValue="%" Name="student_ID" 
                    PropertyName="Text" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="student_ID" />
            <asp:Parameter Name="RefNo" />
        </DeleteParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:TextBox ID="txbResult" runat="server" Visible="False"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
</asp:Content>

