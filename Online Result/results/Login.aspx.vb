Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration
Partial Class Login
    Inherits System.Web.UI.Page
    Dim con As New OleDbConnection
    Dim cmd As OleDbCommand
    Dim adp As New OleDbDataAdapter
    Dim dr As OleDbDataReader
    Dim strScript As String
    Dim adcode As Integer

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Dim con As New OleDbConnection(ConfigurationManager.ConnectionStrings("NITI").ConnectionString)
        'con.Open()

        'Try
        '= New OleDbCommand("Select * from UserRecord where username='" & txtUName.Text & "' ", con)
        'dr = cmd.ExecuteReader
        'While (dr.Read())
        If (txtUName.Text = "Admin" And txtUPass.Text = "useridproof") Then
            Session("uname") = "Admin"
            Session("pass") = "useridproof"
            Response.Redirect("AdminLogin/addcategory.aspx")

        Else
            labMessage.Text = "Either User Name or Password is Wrong!!!"
        End If

        'End While


        'Catch ex As Exception
        'MsgBox(Err.Description)
        'End Try
    End Sub

  
End Class
