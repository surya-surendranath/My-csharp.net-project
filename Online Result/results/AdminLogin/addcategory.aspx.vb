Imports System.Data
Imports System.Data.SqlClient

Partial Class Register
    Inherits System.Web.UI.Page
    Dim sqlcon As New SqlConnection
    Dim cmd As New SqlCommand
    
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        'If Session("Name") = "" Or Session("Password") = "" Or Session("admin") <> "ADMIN" Then
        'Response.Redirect("default.aspx")
        'Else
        cmd = New SqlClient.SqlCommand("insert into SemCode(progcode,cource) values('" & textbox2.Text & "','" & textbox3.Text & "')", sqlcon)
        cmd.ExecuteNonQuery()
        'gvCustomres.DataSource = SqlDataSource1
        gvCustomres.DataBind()
        labMessage.Text = "Record Added Successfully"
        textbox2.Text = ""
        textbox3.Text = ""
        'End If

        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Try

        'Catch ex As Exception
        '    Response.Write("An Error Occurred: " & e.ToString())
        'End Try
        If Session("uname") = "" Then
            'Or Session("admin") <> "True"
            Response.Redirect("~/Login.aspx")
            'ElseIf Session("Name") <> "" And Session("Password") <> "" And Session("admin") <> "ADMIN" Then
            '    Response.Redirect("adminhome.aspx")
        End If
    End Sub
End Class
