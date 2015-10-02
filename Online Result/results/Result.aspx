<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Result.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="stylesheet_admin.css" rel="stylesheet" type="text/css" />
       <link type="text/css" rel="stylesheet" href="css/style.css" />
<title> Online Result::</title>
<link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 7px;
        }
        .style2
        {
            height: 22px;
        }
        .style3
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
<div id="header">

<div id="left_block"><img src="images/OnlineResult.jpg" width="300" height="100" alt="CRM" /></div>
<div id="right_block"><img src="images/Results-new.jpg" width="132" height="99" alt="CRM" /></div>

</div>
<div id="body_content">

<h1>Result</h1>

<div id="login">
    <table border="0" align="center" style="width:800px">
      <tr style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">
        <td align="left"  valign="top" class="style3" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">Roll 
            No./Regn. No</td>
        <td align="left" valign="top" class="style3">
            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top">Name of student</td>
        <td align="left" valign="top">
            <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top" class="style3" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">Date of 
            Birth</td>
        <td align="left" valign="top" class="style3">
            <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">Father’s 
            Name</td>
        <td align="left" valign="top">
            <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">Mother’s 
            Name</td>
        <td align="left" valign="top">
            <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">Program 
            Code</td>
        <td align="left" valign="top">
            <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">Course</td>
        <td align="left" valign="top">
            <asp:Label ID="Label7" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top" class="style2" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 15px">Batch</td>
        <td align="left" valign="top" class="style2">
            <asp:Label ID="Label8" runat="server" Font-Names="Verdana" Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="left" valign="top" class="style1">&nbsp;</td>
        <td align="left" valign="top" class="style1">
            <asp:Label ID="Label9" runat="server" Visible="False" Font-Names="Verdana" 
                Font-Size="15px"></asp:Label>
                            </td>
      </tr>
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label18" runat="server" ForeColor="#003300" 
                style="font-weight: 700"></asp:Label>
          </td>
      </tr>
      <tr>
        <td valign="top" colspan="2">
        <div id="container">
        <asp:GridView ID="gvCustomres" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label11" runat="server" ForeColor="#003300" 
                style="font-weight: 700"></asp:Label>
          </td>
      </tr>
       <tr>
        <td valign="top" colspan="2">
        <div id="Div1">
        <asp:GridView ID="GridView1" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label12" runat="server" ForeColor="#003300"></asp:Label>
          </td>
      </tr>
       <tr>
        <td valign="top" colspan="2">
        <div id="Div2">
        <asp:GridView ID="GridView2" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style=" font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label13" runat="server" ForeColor="#003300"></asp:Label>
          </td>
      </tr>
       <tr>
        <td valign="top" colspan="2">
        <div id="Div3">
        <asp:GridView ID="GridView3" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style=" font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label14" runat="server" ForeColor="#003300"></asp:Label>
          </td>
      </tr>
       <tr>
        <td valign="top" colspan="2">
        <div id="Div4">
        <asp:GridView ID="GridView4" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style=" font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label15" runat="server" ForeColor="#003300"></asp:Label>
          </td>
      </tr>
       <tr>
        <td valign="top" colspan="2">
        <div id="Div5">
        <asp:GridView ID="GridView5" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label16" runat="server" ForeColor="#003300"></asp:Label>
          </td>
      </tr>
       <tr>
        <td valign="top" colspan="2">
        <div id="Div6">
        <asp:GridView ID="GridView6" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top" class="style1" colspan="2" 
              style=" font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label17" runat="server" ForeColor="#003300"></asp:Label>
          </td>
      </tr>
       <tr>
        <td valign="top" colspan="2">
        <div id="Div7">
        <asp:GridView ID="GridView7" runat="server" ShowFooter="true"
            AutoGenerateColumns="False"
            GridLines="None"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" PageSize="15">

            <Columns>
                <asp:BoundField DataField="SubCode" HeaderText="Subject Code" />
                <asp:BoundField DataField="SubName" FooterText="Total"  HeaderText="Subject Name" />
                <asp:TemplateField HeaderText="Max. Marks">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmarks").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal1" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmarks"  HeaderText="Max. Marks" />--%>
                 <asp:TemplateField HeaderText="Total Marks Obt.">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("maxmobt").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
               <%-- <asp:BoundField DataField="maxmobt" HeaderText="Marks Obtained" />--%>
               <%-- <asp:BoundField DataField="result" HeaderText="Result/division" />--%>
                <asp:TemplateField HeaderText="Result/division">
     <ItemTemplate>
     <asp:Label ID="lblAmount" runat="server" 
                Text='<%# ""+Eval("result").ToString()%>'>
     </asp:Label>
     </ItemTemplate>
     <FooterTemplate>
     <asp:Label ID="lblTotal2" runat="server"></asp:Label>
     </FooterTemplate>
     </asp:TemplateField>
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>

<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        </asp:GridView>
        </div> 
            &nbsp;</td>
      </tr>
      
       <tr>
        <td align="left" valign="top" class="style1" colspan="2" 
              
               style=" font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            <asp:Label ID="Label19" runat="server" ForeColor="#003300">Result :</asp:Label>
          &nbsp; :
            <asp:Label ID="Label10" runat="server" ForeColor="#003300"></asp:Label>
          </td>
      </tr>
      
       <tr>
        <td align="left" valign="top" class="style1" colspan="2" 
              
               style=" font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-weight: bold; color: #FFFFFF">
            &nbsp;</td>
      </tr>
    </table>
    </form>

<div id="footer">
  <p>Gaurav Badhani:badhani_gaurav@yahoo.com:09312618440 | All Right Reserved. </div>

  
</body>
</html>
