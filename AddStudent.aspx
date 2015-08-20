<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
</p>
    <p>
    <br />
    Student ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbID" runat="server" Width="156px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
</p>
<p>
    First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbFname" runat="server" Width="156px"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
</p>
<p>
    Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbLname" runat="server" Width="155px"></asp:TextBox>
</p>
<p>
    Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlGender" runat="server" Width="60px" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
</p>
<p>
    Date Of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txbDOB" runat="server" Width="157px" OnTextChanged="txbDOB_TextChanged"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;(yyyy-mm-dd)</p>
<p>
    Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbAddress" runat="server" Height="80px" TextMode="MultiLine" 
        Width="156px"></asp:TextBox>
</p>
<p>
    Accomodation Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlAccomodition" runat="server" 
        Width="154px">
        <asp:ListItem>Hostel/Boarding</asp:ListItem>
        <asp:ListItem>Flat</asp:ListItem>
        <asp:ListItem>Rental</asp:ListItem>
        <asp:ListItem>Own Home</asp:ListItem>
        <asp:ListItem>Living at Home</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbMobile" runat="server" Width="158px"></asp:TextBox>
</p>
<p>
    Landline Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbPhone" runat="server" Width="158px"></asp:TextBox>
</p>
<p>
    Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txbEmail" runat="server" Width="159px"></asp:TextBox>
</p>
<p>
    Method Of Contact:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlContact" runat="server" Width="156px">
        <asp:ListItem>Telephone</asp:ListItem>
        <asp:ListItem>Mobile</asp:ListItem>
        <asp:ListItem>Letter</asp:ListItem>
        <asp:ListItem>Email</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;</p>
<p>
    Student Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlStatus" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>NZ Citizen</asp:ListItem>
        <asp:ListItem>NZ Residency</asp:ListItem>
        <asp:ListItem>International Student</asp:ListItem>
    </asp:DropDownList>
    &nbsp;</p>
<p>
    Ethnicity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlEthnicity" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList5_SelectedIndexChanged">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem Value="Pakeha">NZ European / Pakeha</asp:ListItem>
        <asp:ListItem Value="Maori">NZ Maori</asp:ListItem>
        <asp:ListItem Value="Pacific">Pacific Island (Please specify)</asp:ListItem>
        <asp:ListItem Value="Asian">Asian (Please specify)</asp:ListItem>
        <asp:ListItem Value="Other">Other (Please specify)</asp:ListItem>
    </asp:DropDownList>
    &nbsp;
    <asp:TextBox ID="txbEthnicity" runat="server" Visible="False"></asp:TextBox>
</p>
<p>
    Campus:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlCampus" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Auckland</asp:ListItem>
        <asp:ListItem>Wellington</asp:ListItem>
        <asp:ListItem>Christchurch</asp:ListItem>
        <asp:ListItem>Hamilton</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
</p>
<p>
    Faculty:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlFaculty" runat="server" AutoPostBack="True" 
        onselectedindexchanged="ddlFaculty_SelectedIndexChanged">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem Value="Faculty of Arts">Faculty of Arts</asp:ListItem>
        <asp:ListItem Value="Faculty of Business">Faculty of Business</asp:ListItem>
        <asp:ListItem Value="Faculty of Health">Faculty of Health</asp:ListItem>
        <asp:ListItem Value="Faculty of ">Faculty of Health</asp:ListItem>
        <asp:ListItem Value="Faculty of Service Industries">Faculty of Service Industries</asp:ListItem>
        <asp:ListItem Value="Faculty of Trades">Faculty of Trades</asp:ListItem>
        <asp:ListItem Value="Te Wananga Maori">Te Wananga Maori</asp:ListItem>
    </asp:DropDownList>
    &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
    </p>
<p>
    Please select Courses or Programmes:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlMaori" runat="server" Visible="False" OnSelectedIndexChanged="ddlMaori_SelectedIndexChanged">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Certificate in General Studies </asp:ListItem>
        <asp:ListItem>Certificate in Mastercraft (Ngā Tapuwae o Hine-te-iwaiwa) </asp:ListItem>
        <asp:ListItem>Certificate in Reo Māori – Te Ara Piko </asp:ListItem>
        <asp:ListItem>Certificate in Reo Māori – Tēnei Au </asp:ListItem>
        <asp:ListItem>Certificate in Waka Ama </asp:ListItem>
        <asp:ListItem>Certificate in Waka Ama (Advanced) </asp:ListItem>
        <asp:ListItem>National Certificate in Whakairo (Tūturu) (Level 4) </asp:ListItem>
        <asp:ListItem>National Diploma in Reo Māori (Level 5) </asp:ListItem>
        <asp:ListItem>National Diploma in Reo Māori (Level 6) </asp:ListItem>
        <asp:ListItem>National Diploma in Whakairo (Level 5) </asp:ListItem>
        <asp:ListItem>National Diploma in Whakairo (Level 6) </asp:ListItem>
        <asp:ListItem>Te Hiringa o Te Reo</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddlTrades" runat="server" Visible="False">
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
    <asp:DropDownList ID="ddlIndustries" runat="server" 
        onselectedindexchanged="ddlIndustries_SelectedIndexChanged" Visible="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Certificate in Beauty and Hairdressing </asp:ListItem>
        <asp:ListItem>Certificate in Beauty Therapy </asp:ListItem>
        <asp:ListItem>Certificate in Cafe Service </asp:ListItem>
        <asp:ListItem>Certificate in Office Administration and Computing (Advanced) </asp:ListItem>
        <asp:ListItem>Certificate in Office Administration and Computing (Intermediate) </asp:ListItem>
        <asp:ListItem>Certificate in Office Administration and Computing (Introductory) </asp:ListItem>
        <asp:ListItem>Certificate in Office Skills/Computing </asp:ListItem>
        <asp:ListItem>Certificate in Outdoor Adventure </asp:ListItem>
        <asp:ListItem>Certificate in Professional Cookery </asp:ListItem>
        <asp:ListItem>Certificate in Retail and Cosmetic Services </asp:ListItem>
        <asp:ListItem>Certificate in Retail Management </asp:ListItem>
        <asp:ListItem>Community Computing </asp:ListItem>
        <asp:ListItem>Diploma in Outdoor Adventure </asp:ListItem>
        <asp:ListItem>Flexi-Learn Computer Applications </asp:ListItem>
        <asp:ListItem>Mountain Safety Council Courses </asp:ListItem>
        <asp:ListItem>National Certificate Business (First Line Management) Level 3 </asp:ListItem>
        <asp:ListItem>National Certificate in Computing (Level 2 and 3) </asp:ListItem>
        <asp:ListItem>National Certificate in Hairdressing (Salon Support) </asp:ListItem>
        <asp:ListItem>National Certificate in Tourism (Core Skills) Level 3 </asp:ListItem>
        <asp:ListItem>National Diploma in Hospitality (Management) (Level 5) </asp:ListItem>
        <asp:ListItem>Short Course Certificate in Avalanche Safety </asp:ListItem>
        <asp:ListItem>Short Course Certificate in Computer Applications </asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddlBusiness" runat="server" Visible="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Bachelor of Applied Business Studies </asp:ListItem>
        <asp:ListItem>Bachelor of Information Technology </asp:ListItem>
        <asp:ListItem>Certificate in English Language </asp:ListItem>
        <asp:ListItem>Certificate in English Language (Advanced) </asp:ListItem>
        <asp:ListItem>Certificate in Information Technology </asp:ListItem>
        <asp:ListItem>Diploma in Information Technology (Level 5) </asp:ListItem>
        <asp:ListItem>Diploma in Information Technology (Level 6) </asp:ListItem>
        <asp:ListItem>Diploma in Management (Not for Profit Sector) </asp:ListItem>
        <asp:ListItem>Graduate Diploma in Applied Business Studies </asp:ListItem>
        <asp:ListItem>Graduate Diploma in Information Technology </asp:ListItem>
        <asp:ListItem>New Zealand Diploma in Business </asp:ListItem>
        <asp:ListItem>New Zealand Institute of Management (NZIM) Certificate in Management </asp:ListItem>
        <asp:ListItem>New Zealand Institute of Management (NZIM) Certificate in Small Business Management </asp:ListItem>
        <asp:ListItem>New Zealand Institute of Management (NZIM) Diploma in Management </asp:ListItem>
        <asp:ListItem>New Zealand Law Society Legal Executive Diploma </asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddlArts" runat="server" 
        onselectedindexchanged="ddlArts_SelectedIndexChanged" Visible="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Adobe Creative Suite </asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Creative Writing) </asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Music) </asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Performing Arts)</asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Visual Arts and Design)</asp:ListItem>
        <asp:ListItem>Bachelor of Teaching (Early Childhood Education) </asp:ListItem>
        <asp:ListItem>Certificate in Advanced Photography </asp:ListItem>
        <asp:ListItem>Certificate in Desktop Publishing for Print and the Web </asp:ListItem>
        <asp:ListItem>Certificate in Digital Media </asp:ListItem>
        <asp:ListItem>Certificate in DJ Music </asp:ListItem>
        <asp:ListItem>Certificate in Foundation Music</asp:ListItem>
        <asp:ListItem>Certificate in Live Sound and Event Production </asp:ListItem>
        <asp:ListItem>Certificate in Mastercraft </asp:ListItem>
        <asp:ListItem>Certificate in Multimedia Journalism </asp:ListItem>
        <asp:ListItem>Certificate in Practical Photography </asp:ListItem>
        <asp:ListItem>Certificate in Professional Teaching Practice (English) </asp:ListItem>
        <asp:ListItem>Certificate in Rock, Jazz and Commercial Music </asp:ListItem>
        <asp:ListItem>Certificate in Screen Acting </asp:ListItem>
        <asp:ListItem>Diploma in Applied Stage and Screen Arts (Advanced) </asp:ListItem>
        <asp:ListItem>Diploma in Creative Writing </asp:ListItem>
        <asp:ListItem>Diploma in Creative Writing (Advanced) </asp:ListItem>
        <asp:ListItem>Diploma in Digital Design </asp:ListItem>
        <asp:ListItem>Diploma in Digital Design and Multi-media </asp:ListItem>
        <asp:ListItem>Diploma in Early Childhood Education </asp:ListItem>
        <asp:ListItem>Diploma in Jewellery Design </asp:ListItem>
        <asp:ListItem>Diploma in Performing Arts (Commercial Dance) </asp:ListItem>
        <asp:ListItem>Diploma in Performing Arts: Singing (Musical Theatre) </asp:ListItem>
        <asp:ListItem>Diploma in Publishing </asp:ListItem>
        <asp:ListItem>Diploma in Publishing (Applied) </asp:ListItem>
        <asp:ListItem>Diploma in Stage and Screen Arts </asp:ListItem>
        <asp:ListItem>Graduate Diploma in Creative Writing </asp:ListItem>
        <asp:ListItem>National Diploma in Journalism (Multi-media) (Level 5) </asp:ListItem>
        <asp:ListItem>The Creative Writing Programmes Introduction </asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddlHealth" runat="server" Visible="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Bachelor of Health Science (Paramedic) </asp:ListItem>
        <asp:ListItem>Bachelor of Nursing </asp:ListItem>
        <asp:ListItem>Bachelor of Nursing Māori </asp:ListItem>
        <asp:ListItem>Bachelor of Nursing Pacific </asp:ListItem>
        <asp:ListItem>Bachelor of Social Work </asp:ListItem>
        <asp:ListItem>Certificate in Foundation Education (Health Science) </asp:ListItem>
        <asp:ListItem>Certificate in Foundation Education (Social Sciences) </asp:ListItem>
        <asp:ListItem>Certificate in Health Professional Practice Development </asp:ListItem>
        <asp:ListItem>Certificate in Nursing (Long Term Care and Rehabilitation) </asp:ListItem>
        <asp:ListItem>Certificate in Preparation for Tertiary Study </asp:ListItem>
        <asp:ListItem>Competency Assessment Programme for Nurses </asp:ListItem>
        <asp:ListItem>National Certificate in Mental Health (Mental Health Support Work) </asp:ListItem>
        <asp:ListItem>National Certificate in Tamariki Ora – Well Child Services </asp:ListItem>
        <asp:ListItem>National Diploma in Mental Health (Mental Health Support Work) </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Hospice Palliative Care </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Nursing </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Perioperative Specialty Nursing </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Primary Health Care Specialty Nursing </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Specialty Care </asp:ListItem>
        <asp:ListItem>Pre-entry to Degrees </asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:Button ID="ButtonAddStudent" runat="server" 
        onclick="ButtonAddStudent_Click" style="text-align: center" 
        Text="Add Student" />
</p>
<p>
    &nbsp;</p>
</asp:Content>

