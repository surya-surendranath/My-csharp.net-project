<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="StudentgrantsummaryAdmin.aspx.cs" Inherits="StudentgrantsummaryAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <asp:Label ID="TitleTxt" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#993300" Text="TitleTxt" CssClass="auto-style3"></asp:Label>
    </p>
    <b>&nbsp;&nbsp;&nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <br />
    </b>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 525px; font-size: large;" Width="541px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GridLines="Vertical" CssClass="auto-style3">
        <Columns>
            <asp:BoundField DataField="student_ID" HeaderText="student_ID" />
            <asp:BoundField DataField="GrantType" HeaderText="GrantType" />
            <asp:BoundField DataField="GrantDescription" HeaderText="GrantDescription" />
            <asp:BoundField DataField="GrantValue" HeaderText="GrantValue" />
            <asp:BoundField DataField="EXP1" HeaderText="DateOfIssue" />
            <asp:BoundField DataField="KuhaFunds" HeaderText="KuhaFunds" />
            <asp:BoundField DataField="Refno" HeaderText="Refno" />
        </Columns>
          <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <p style="text-align: center">
         <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" style="margin-left: 217px; color: #993366;" Text="Ok"  Width="86px" CssClass="auto-style3" />
                    </p>

    <center>
        <p>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                    </b>
                   
                    </p>

    </center>
     
    <p style="text-align: center">
        <b></b></p>
    <p style="text-align: center">
        <b></b></p>
    <p style="text-align: center">
        <b></b></p>
    <p style="text-align: center">
        <b></b></p>
    <p style="text-align: center">
        <b></b></p>
    <p style="text-align: center">
        <b></b></p>
    <p style="text-align: center">
        <b></b></p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
        
        
            
            
            
        
        ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" SelectCommand="SELECT student_ID, GrantType, GrantDescription, GrantValue, YEAR(DateOfIssue) AS EXP1, KuhaFunds, Refno FROM Student_vouchers WHERE (student_ID = @StudentID)"
>
        <SelectParameters>
            <asp:ControlParameter ControlID="txbRead" Name="StudentID" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        <b></b></p>
    <p>
        <asp:TextBox ID="txbRead" runat="server" 
        Visible="False" OnTextChanged="txbRead_TextChanged" CssClass="auto-style3"></asp:TextBox>
    </p>
    <p>
        <b></b></p>
    <p>
        <b></b></p>
</asp:Content>

