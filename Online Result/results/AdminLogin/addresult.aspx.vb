Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing.Imaging
Imports System.Drawing.Drawing2D
Imports System.Drawing
Imports System.IO

Partial Class Register
    Inherits System.Web.UI.Page
    Dim sqlcon As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim strscript, f3, f4 As String
    
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        cmd = New SqlClient.SqlCommand("insert into stureg(ProCode,rollno,coursename,stuname,dob,batchfrom,batchto,fathername,mothername,ResultType) values('" & DropDownList1.SelectedValue & "','" & textbox2.Text & "','" & textbox3.Text & "','" & textbox4.Text & "','" & textbox5.Text & "','" & drpBirthYear.SelectedValue & "','" & drpBirthYear0.SelectedValue & "','" & textbox8.Text & "','" & textbox9.Text & "','" & Trim(DropDownList2.SelectedValue) & "')", sqlcon)
            cmd.ExecuteNonQuery()
            ',itemimage,itemlargeimg
            'gvCustomres.DataSource = SqlDataSource1
            gvCustomres.DataBind()
            labMessage.Text = "Record Added Successfully"
        textbox2.Text = ""
        textbox3.Text = ""
        textbox4.Text = ""
        textbox5.Text = ""
        textbox8.Text = ""
        textbox9.Text = ""
            'End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Session("Name") = "" And Session("Password") = "" Then
        '    'Or Session("admin") <> "True"
        '    Response.Redirect("default.aspx")
        'ElseIf Session("Name") <> "" And Session("Password") <> "" And Session("admin") <> "ADMIN" Then
        '    Response.Redirect("adminhome.aspx")
        'End If

        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        If Not IsPostBack Then
            cmd = New SqlCommand("Select * from SemCode ORDER BY progcode", sqlcon)
            dr = cmd.ExecuteReader
            With DropDownList1
                .DataSource = dr
                .DataTextField = "progcode"
                .DataBind()
                .Items.Insert(0, "---Select---")
                dr.Close()
            End With

        End If
    End Sub

    Protected Sub gvCustomres_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvCustomres.RowCommand
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()

        Dim currentCommand As String = e.CommandName
        If currentCommand <> "Page" Then
            Dim rollno As String
            Dim currentRowIndex As Integer = Int32.Parse(e.CommandArgument)
            Dim ProductID As String = gvCustomres.DataKeys(currentRowIndex).Value
            'Session("ID") = ProductID
            cmd = New SqlCommand("Select rollno from StuReg where code=" & ProductID & "", sqlcon)
            dr = cmd.ExecuteReader
            While (dr.Read())
                rollno = dr("rollno")
            End While
            dr.Close()
            If currentCommand = "Delete" Then
                cmd = New SqlClient.SqlCommand("delete from stumarks where rollno=" & rollno & "", sqlcon)
                cmd.ExecuteNonQuery()
            End If
        End If
    End Sub

    'Protected Sub btnAdd1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd1.Click
    '    btnAdd.Visible = True
    '    btnAdd0.Visible = False
    '    btnAdd1.Visible = False
    '    Session("ID") = ""
    '    textbox2.Text = ""
    '    textbox3.Text = ""
    '    textbox4.Text = ""
    '    textbox5.Text = ""
    '    'textbox6.Text = ""
    '    'textbox7.Text = ""
    'End Sub

    'Protected Sub btnAdd0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd0.Click
    '    Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    '    sqlcon.Open()
    '    'insert into product(catid,itemid,itemname,itemsize,itemprice,itemdesc,itemdetail) values(" & DropDownList1.SelectedValue & ",'" & textbox2.Text & "','" & textbox3.Text & "','" & textbox4.Text & "','" & textbox5.Text & "','" & textbox6.Text & "','" & textbox7.Text & "')
    '    cmd = New SqlClient.SqlCommand("update product set catid= " & DropDownList1.SelectedValue & " ,itemid='" & textbox2.Text & "', itemname= '" & textbox3.Text & "',itemsize='" & textbox4.Text & "',itemprice='" & textbox5.Text & "',itemdesc='" & textbox6.Text & "',itemdetail='" & textbox7.Text & "'  where code=" & Session("ID") & "", sqlcon)
    '    cmd.ExecuteNonQuery()
    '    btnAdd.Visible = True
    '    btnAdd0.Visible = False
    '    btnAdd1.Visible = False
    '    textbox2.Text = ""
    '    textbox3.Text = ""
    '    textbox4.Text = ""
    '    textbox5.Text = ""
    '    'textbox6.Text = ""
    '    'textbox7.Text = ""
    '    Session("ID") = ""
    'End Sub

    Protected Sub DropDownList1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.TextChanged
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        If DropDownList1.Text <> "---Select---" Then
            cmd = New SqlCommand("Select cource from SemCode where progcode='" & DropDownList1.SelectedValue & "'", sqlcon)
            dr = cmd.ExecuteReader
            While (dr.Read())
                textbox3.Text = dr("cource")
            End While

        End If
    End Sub
End Class
