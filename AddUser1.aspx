<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddUser1.aspx.cs" Inherits="AddUser1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            color: #993366;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong><span class="auto-style3">User ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbID1" runat="server" Width="156px" CssClass="auto-style3"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbFname1" runat="server" Width="156px" CssClass="auto-style3"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbLname1" runat="server" Width="155px" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:DropDownList ID="ddlGender1" runat="server" Width="60px" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" CssClass="auto-style3">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Date Of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbDOB1" runat="server" Width="157px" OnTextChanged="txbDOB_TextChanged" CssClass="auto-style3"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        <span class="auto-style3">&nbsp;(yyyy-mm-dd)</span></strong></p>
    <p>
        <strong><span class="auto-style3">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbAddress1" runat="server" Height="80px" TextMode="MultiLine" 
        Width="156px" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbMobile1" runat="server" Width="158px" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Landline Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txbPhone1" runat="server" Width="158px" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:TextBox ID="txbEmail1" runat="server" Width="159px" CssClass="auto-style3"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">Faculty:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:DropDownList ID="ddlFaculty1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="ddlFaculty_SelectedIndexChanged" CssClass="auto-style3">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="Faculty of Arts">Faculty of Arts</asp:ListItem>
            <asp:ListItem Value="Faculty of Business">Faculty of Business</asp:ListItem>
            <asp:ListItem Value="Faculty of Health">Faculty of Health</asp:ListItem>
            <asp:ListItem Value="Faculty of ">Faculty of Health</asp:ListItem>
            <asp:ListItem Value="Faculty of Service Industries">Faculty of Service Industries</asp:ListItem>
            <asp:ListItem Value="Faculty of Trades">Faculty of Trades</asp:ListItem>
            <asp:ListItem Value="Te Wananga Maori">Te Wananga Maori</asp:ListItem>
        </asp:DropDownList>
        </strong>&nbsp;<strong><asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        </strong>
    </p>
    <p>
        <strong><span class="auto-style3">password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
        <asp:TextBox ID="passwdbox" runat="server" Width="185px" OnTextChanged="passwdbox_TextChanged" CssClass="auto-style3"></asp:TextBox>
        </strong>&nbsp;<strong><asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        </strong>
    </p>
<p class="auto-style3">
        <strong>Security1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Who is your best childhood&nbsp; friend?</strong></p>
<p>
        <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox1" runat="server" Width="230px" CssClass="auto-style3"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        </strong>
    </p>
<p class="auto-style3">
        <strong>Security2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; What is the name of your pet name?</strong></p>
<p>
        <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox2" runat="server" Width="228px" CssClass="auto-style3"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*" CssClass="auto-style3"></asp:Label>
        </strong>
    </p>
    <p style="height: 107px">
        <strong>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonAddStudent1" runat="server" 
        onclick="ButtonAddStudent_Click" style="text-align: center" 
        Text="Add User" CssClass="auto-style3" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="22px" OnClick="Button1_Click" style="color: #990099" Text="Go Back &lt;-" Width="83px" />
        </strong>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

