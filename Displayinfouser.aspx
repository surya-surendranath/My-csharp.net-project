<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Displayinfouser.aspx.cs" Inherits="Displayinfouser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</p>
<center>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="Black" 
            GridLines="Vertical" AllowPaging="True" AllowSorting="True" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" Runat="server" 
                OnClientClick="return confirm('Are you sure you want to delete this student?');"
                CommandName="Delete">Delete Student</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" Runat="server" 
            CommandName="Select">View Grant</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" 
                    SortExpression="Student_ID" />
                <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" 
                    SortExpression="Address1" />
                <asp:BoundField DataField="Accomodition_Type" HeaderText="Accomodition_Type" 
                    SortExpression="Accomodition_Type" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                    SortExpression="Mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Marital_Status" HeaderText="Marital_Status" 
                    SortExpression="Marital_Status" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" 
                    SortExpression="Contact" />
                <asp:BoundField DataField="Main_Ethnicity" HeaderText="Main_Ethnicity" 
                    SortExpression="Main_Ethnicity" />
                <asp:BoundField DataField="Detailed_Ethnicity" HeaderText="Detailed_Ethnicity" 
                    SortExpression="Detailed_Ethnicity" />
                <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                    SortExpression="Faculty" />
                <asp:BoundField DataField="Courses" HeaderText="Courses" 
                    SortExpression="Courses" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Student_Registration_Form] WHERE [Student_ID] = @Student_ID" 
            InsertCommand="INSERT INTO [Student_Registration_Form] ([Student_ID], [Fname], [Lname], [Gender], [DOB], [Address1], [Accomodition_Type], [Phone], [Mobile], [Email], [Marital_Status], [Contact], [Main_Ethnicity], [Faculty], [Courses], [Detailed_Ethnicity], [campus]) VALUES (@Student_ID, @Fname, @Lname, @Gender, @DOB, @Address1, @Accomodition_Type, @Phone, @Mobile, @Email, @Marital_Status, @Contact, @Main_Ethnicity, @Faculty, @Courses, @Detailed_Ethnicity, @campus)" 
            ProviderName="<%$ ConnectionStrings:FinanceDBConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [Student_ID], [Fname], [Lname], [Gender], [DOB], [Address1], [Accomodition_Type], [Phone], [Mobile], [Email], [Marital_Status], [Contact], [Main_Ethnicity], [Faculty], [Courses], [Detailed_Ethnicity], [campus] FROM [Student_Registration_Form]
 WHERE (([Fname] like @Fname)  OR ([Student_ID] = @Student_ID))" 
            
            UpdateCommand="UPDATE [Student_Registration_Form] SET [Fname] = @Fname, [Lname] = @Lname, [Gender] = @Gender, [DOB] = @DOB, [Address1] = @Address1, [Accomodition_Type] = @Accomodition_Type, [Phone] = @Phone, [Mobile] = @Mobile, [Email] = @Email, [Marital_Status] = @Marital_Status, [Contact] = @Contact, [Main_Ethnicity] = @Main_Ethnicity, [Faculty] = @Faculty, [Courses] = @Courses, [Detailed_Ethnicity] = @Detailed_Ethnicity, [campus] = @campus WHERE [Student_ID] = @Student_ID">
    <SelectParameters>
        <asp:ControlParameter ControlID="txbResult" DefaultValue="%" Name="Fname" 
                    PropertyName="Text" />
        <asp:ControlParameter ControlID="txbResult" DefaultValue="%" Name="Student_ID" 
                    PropertyName="Text" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="Student_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Student_ID" Type="String" />
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="DOB" Type="DateTime" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Accomodition_Type" Type="String" />
        <asp:Parameter Name="Phone" Type="Int32" />
        <asp:Parameter Name="Mobile" Type="Int32" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Marital_Status" Type="String" />
        <asp:Parameter Name="Contact" Type="String" />
        <asp:Parameter Name="Main_Ethnicity" Type="String" />
        <asp:Parameter Name="Faculty" Type="String" />
        <asp:Parameter Name="Courses" Type="String" />
        <asp:Parameter Name="Detailed_Ethnicity" Type="String" />
        <asp:Parameter Name="campus" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="DOB" Type="DateTime" />
        <asp:Parameter Name="Address1" Type="String" />
        <asp:Parameter Name="Accomodition_Type" Type="String" />
        <asp:Parameter Name="Phone" Type="Int32" />
        <asp:Parameter Name="Mobile" Type="Int32" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Marital_Status" Type="String" />
        <asp:Parameter Name="Contact" Type="String" />
        <asp:Parameter Name="Main_Ethnicity" Type="String" />
        <asp:Parameter Name="Faculty" Type="String" />
        <asp:Parameter Name="Courses" Type="String" />
        <asp:Parameter Name="Detailed_Ethnicity" Type="String" />
        <asp:Parameter Name="campus" Type="String" />
        <asp:Parameter Name="Student_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</p>
<p>
    <asp:TextBox ID="txbResult" runat="server" Visible="False"></asp:TextBox>
</p>
<p style="text-align: center">
    <asp:Button ID="btnBack" runat="server" onclick="btnBack_Click" 
            Text="Search New Student" style="font-weight: 700; color: #993366" />
</p>
<p style="text-align: center">
        &nbsp;</p>
</asp:Content>

