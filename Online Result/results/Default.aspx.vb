Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim sqlcon As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim id As Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        lblmessage.Text = ""
        cmd = New SqlCommand("Select rollno from StuReg where rollno='" & TextBox1.Text & "' ", sqlcon)
        dr = cmd.ExecuteReader
        While dr.Read()
            If TextBox1.Text = dr(0) Then
                Session("RegNo") = TextBox1.Text
                Response.Redirect("Result.aspx")
            Else
                lblmessage.Text = "RegNo Is Not Correct !.. "
                TextBox1.Text = ""
            End If


        End While
        dr.Close()
        lblmessage.Text = "RegNo Is Not Correct !.. "
        TextBox1.Text = ""



        'If Session("Name") = "" Or Session("Password") = "" Or Session("admin") <> "ADMIN" Then

        'Else
        'cmd = New SqlClient.SqlCommand("insert into SemCode(progcode,cource) values('" & textbox2.Text & "','" & textbox3.Text & "')", sqlcon)
        'cmd.ExecuteNonQuery()
        'gvCustomres.DataSource = SqlDataSource1
        'gvCustomres.DataBind()
        'labMessage.Text = "Record Added Successfully"
        'textbox2.Text = ""
        'textbox3.Text = ""
        'End If
    End Sub
End Class
