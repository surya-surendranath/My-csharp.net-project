Imports System.Data
Imports System.Data.SqlClient

Partial Class Register
    Inherits System.Web.UI.Page
    Dim sqlcon As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        'If Session("Name") = "" Or Session("Password") = "" Or Session("admin") <> "ADMIN" Then
        'Response.Redirect("default.aspx")
        'Else
        cmd = New SqlClient.SqlCommand("insert into SemSubDetail(progcode,sem,SubCode,SubName,maxmarks) values('" & DropDownList1.SelectedValue & "','" & DropDownList2.SelectedValue & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", sqlcon)
        cmd.ExecuteNonQuery()
        'gvCustomres.DataSource = SqlDataSource1
        gvCustomres.DataBind()
        labMessage.Text = "Record Added Successfully"
        TextBox1.Text = ""
        textbox2.Text = ""
        textbox3.Text = ""
        'End If

        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        If Session("uname") = "Admin" AndAlso Session("pass") = "useridproof" Then
            If Not IsPostBack Then
                cmd = New SqlCommand("Select * from SemCode ORDER BY progcode", sqlcon)
                dr = cmd.ExecuteReader
                With DropDownList1
                    .DataSource = dr
                    .DataTextField = "progcode"
                    '.DataValueField = "code"
                    .DataBind()
                    .Items.Insert(0, "---Select---")
                    dr.Close()
                End With
            End If
        End If
    End Sub
End Class
