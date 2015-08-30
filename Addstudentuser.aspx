<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addstudentuser.aspx.cs" Inherits="Addstudentuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-weight: bold;
            color: #990099;
        }
        .auto-style4 {
            color: #990099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Larger" CssClass="auto-style3"></asp:Label>
</p>
<p>
    <b>
    <br class="auto-style4" /><span class="auto-style4">Student ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></b>
        <asp:TextBox ID="txbID" runat="server" Width="156px" OnTextChanged="txbID_TextChanged" CssClass="auto-style3"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
</p>
<p>
    <span class="auto-style3">First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbFname" runat="server" Width="156px" OnTextChanged="txbFname_TextChanged" CssClass="auto-style3"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
</p>
<p>
    <span class="auto-style3">Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbLname" runat="server" Width="155px" OnTextChanged="txbLname_TextChanged" CssClass="auto-style3"></asp:TextBox>
</p>
<p>
    <span class="auto-style3">Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:DropDownList ID="ddlGender" runat="server" Width="60px" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" CssClass="auto-style3">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
</p>
<p>
    <span class="auto-style3">Date Of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbDOB" runat="server" Width="157px" OnTextChanged="txbDOB_TextChanged" style="height: 22px" CssClass="auto-style3"></asp:TextBox>
    <b>
    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*" CssClass="auto-style4"></asp:Label>
    <span class="auto-style4">&nbsp;(yyyy-mm-dd)</span></b></p>
<p>
    <span class="auto-style3">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbAddress" runat="server" Height="80px" TextMode="MultiLine" 
        Width="156px" OnTextChanged="txbAddress_TextChanged" CssClass="auto-style3"></asp:TextBox>
</p>
<p>
    <span class="auto-style3">Accomodation Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:DropDownList ID="ddlAccomodition" runat="server" 
        Width="154px" OnSelectedIndexChanged="ddlAccomodition_SelectedIndexChanged" CssClass="auto-style3">
        <asp:ListItem>Hostel/Boarding</asp:ListItem>
        <asp:ListItem>Flat</asp:ListItem>
        <asp:ListItem>Rental</asp:ListItem>
        <asp:ListItem>Own Home</asp:ListItem>
        <asp:ListItem>Living at Home</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <span class="auto-style3">Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbMobile" runat="server" Width="158px" OnTextChanged="txbMobile_TextChanged" CssClass="auto-style3"></asp:TextBox>
</p>
<p>
    <span class="auto-style3">Landline Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbPhone" runat="server" Width="158px" OnTextChanged="txbPhone_TextChanged" CssClass="auto-style3"></asp:TextBox>
</p>
<p>
    <span class="auto-style3">Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbEmail" runat="server" Width="159px" OnTextChanged="txbEmail_TextChanged" CssClass="auto-style3"></asp:TextBox>
</p>
<p>
    <span class="auto-style3">Method Of Contact:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:DropDownList ID="ddlContact" runat="server" Width="156px" OnSelectedIndexChanged="ddlContact_SelectedIndexChanged" CssClass="auto-style3">
            <asp:ListItem>Telephone</asp:ListItem>
            <asp:ListItem>Mobile</asp:ListItem>
            <asp:ListItem>Letter</asp:ListItem>
            <asp:ListItem>Email</asp:ListItem>
    </asp:DropDownList>
    <span class="auto-style3">&nbsp;&nbsp;&nbsp;</span></p>
<p>
    <span class="auto-style3">Student Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:DropDownList ID="ddlStatus" runat="server" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" CssClass="auto-style3">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>NZ Citizen</asp:ListItem>
            <asp:ListItem>NZ Residency</asp:ListItem>
            <asp:ListItem>International Student</asp:ListItem>
    </asp:DropDownList>
    <span class="auto-style3">&nbsp;</span></p>
<p>
    <span class="auto-style3">Ethnicity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:DropDownList ID="ddlEthnicity" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList5_SelectedIndexChanged" CssClass="auto-style3">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="Pakeha">NZ European / Pakeha</asp:ListItem>
            <asp:ListItem Value="Maori">NZ Maori</asp:ListItem>
            <asp:ListItem Value="Pacific">Pacific Island (Please specify)</asp:ListItem>
            <asp:ListItem Value="Asian">Asian (Please specify)</asp:ListItem>
            <asp:ListItem Value="Other">Other (Please specify)</asp:ListItem>
    </asp:DropDownList>
    <span class="auto-style3">&nbsp;
        </span>
        <asp:TextBox ID="txbEthnicity" runat="server" Visible="False" CssClass="auto-style3"></asp:TextBox>
</p>
<p>
    <span class="auto-style3">Campus:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
        <asp:DropDownList ID="ddlCampus" runat="server" OnSelectedIndexChanged="ddlCampus_SelectedIndexChanged" CssClass="auto-style3">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Auckland</asp:ListItem>
            <asp:ListItem>Wellington</asp:ListItem>
            <asp:ListItem>Christchurch</asp:ListItem>
            <asp:ListItem>Hamilton</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
</p>
<p>
    <span class="auto-style3">Faculty:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
        <asp:DropDownList ID="ddlFaculty" runat="server" AutoPostBack="True" 
        onselectedindexchanged="ddlFaculty_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Faculty" DataValueField="Faculty" Height="21px" Width="249px" CssClass="auto-style3">
            <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
    </asp:LinqDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT DISTINCT Faculty FROM Faculty"></asp:SqlDataSource>
    &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
</p>
<p>
        <span class="auto-style3">&nbsp;&nbsp;
        </span>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT [Courses] FROM [Faculty] WHERE ([Faculty] = @Faculty)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlFaculty" Name="Faculty" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
</p>
<p class="auto-style3">
    Please select Courses or Programmes:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
        <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Courses" DataValueField="Courses" Height="23px" style="margin-left: 0px" Width="281px" CssClass="auto-style3">
    </asp:DropDownList>
        <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span></p>
<p>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT [Courses] FROM [Faculty] WHERE ([Faculty] = @Faculty)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Faculty of Arts" Name="Faculty" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="ddlMaori" runat="server" Visible="False" Height="16px" OnSelectedIndexChanged="ddlMaori_SelectedIndexChanged" Width="257px" CssClass="auto-style3">
    </asp:DropDownList>
</p>
<p>
    <asp:DropDownList ID="ddlTrades" runat="server" Visible="False" OnSelectedIndexChanged="ddlTrades_SelectedIndexChanged" CssClass="auto-style3">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Certificate in Automotive Engineering </asp:ListItem>
        <asp:ListItem>Certificate in Automotive Engineering (Advanced) </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Aeroplane) </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Aeroplane) Instructor Rating </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Helicopter) </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Helicopter) Advanced </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Helicopter) Turbine </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Multi-engine Instrument Rating) </asp:ListItem>
        <asp:ListItem>Certificate in Carpentry </asp:ListItem>
        <asp:ListItem>Certificate in Civil Construction (Introductory Skills) </asp:ListItem>
        <asp:ListItem>Certificate in Commercial Road Transport </asp:ListItem>
        <asp:ListItem>Certificate in Electrical Engineering </asp:ListItem>
        <asp:ListItem>Certificate in Horticulture and Landscaping </asp:ListItem>
        <asp:ListItem>Certificate in Plumbing, Drainlaying, Gasfitting and Roofing </asp:ListItem>
        <asp:ListItem>Certificate in Road Transport </asp:ListItem>
        <asp:ListItem>Certificate in Trade Skills </asp:ListItem>
        <asp:ListItem>National Certificate in Floristry (Level 2) </asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddlBusiness" runat="server" Visible="False" DataSourceID="SqlDataSource2" DataTextField="Courses" DataValueField="Courses" Height="37px" OnSelectedIndexChanged="ddlBusiness_SelectedIndexChanged" Width="329px" CssClass="auto-style3">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinanceDBConnectionString1 %>" SelectCommand="SELECT [Courses] FROM [Faculty] WHERE ([Faculty] = @Faculty)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Faculty of Business" Name="Faculty" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="ddlIndustries" runat="server" 
        onselectedindexchanged="ddlIndustries_SelectedIndexChanged" Visible="False" Height="151px" Width="371px" CssClass="auto-style3">
    </asp:DropDownList>
    <asp:DropDownList ID="ddlArts" runat="server" 
        onselectedindexchanged="ddlArts_SelectedIndexChanged" Visible="False" DataSourceID="SqlDataSource3" DataTextField="Courses" DataValueField="Courses" Height="17px" Width="339px" CssClass="auto-style3">
    </asp:DropDownList>
</p>
<p>
    <asp:Button ID="ButtonAddStudent" runat="server" 
        onclick="ButtonAddStudent_Click" style="text-align: center" 
        Text="Add Student" CssClass="auto-style3" />
    <asp:DropDownList ID="ddlHealth" runat="server" Visible="False" Height="40px" OnSelectedIndexChanged="ddlHealth_SelectedIndexChanged" Width="304px" CssClass="auto-style3">
    </asp:DropDownList>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Height="22px" OnClick="Button1_Click" Text="Go Back &lt; " Width="88px" CssClass="auto-style3" />
    </p>
</asp:Content>

