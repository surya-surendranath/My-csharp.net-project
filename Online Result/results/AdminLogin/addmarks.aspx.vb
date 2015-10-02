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
    Dim ada As New SqlDataAdapter
    Dim dr As SqlDataReader
    Dim strscript, f3, f4 As String
    Dim ds As New DataSet
    
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        'Dim ctfile As Integer


        'Dim hfc As HttpFileCollection = Request.Files
        'Try
        '    cmd = New SqlClient.SqlCommand("Select max(code) from product", sqlcon)
        '    dr = cmd.ExecuteReader()
        '    While dr.Read
        '        ctfile = dr(0)
        '    End While

        '    dr.Close()
        'Catch ex As Exception
        '    ctfile = 0
        '    dr.Close()
        'End Try
        'ctfile = ctfile + 1
        '    For i As Integer = 0 To hfc.Count - 1
        '        Dim hpf As HttpPostedFile = hfc(i)
        '        If hpf.ContentLength > 0 Then

        '        Dim f1, f2, r, f5 As String
        '            r = hpf.FileName
        '            If r <> "" Then
        '                f1 = ctfile
        '                r = r.Substring(r.LastIndexOf("."))
        '                If i = 0 Then
        '                    f2 = "~/thumb/" + f1 + r
        '                    f3 = "thumb/" + f1 + r
        '                    'hpf.SaveAs(Server.MapPath(f2))
        '                    Dim imageToBeResized As System.Drawing.Image = System.Drawing.Image.FromStream(hpf.InputStream)
        '                    Dim imageHeight As Integer = imageToBeResized.Height
        '                    Dim imageWidth As Integer = imageToBeResized.Width
        '                    Dim maxHeight As Integer = 77
        '                    Dim maxWidth As Integer = 99
        '                    imageHeight = (imageHeight * maxWidth) / imageWidth
        '                    imageWidth = maxWidth

        '                    If imageHeight > maxHeight Then
        '                        imageWidth = (imageWidth * maxHeight) / imageHeight
        '                        imageHeight = maxHeight
        '                    End If

        '                    Dim bitmap As New Bitmap(imageToBeResized, imageWidth, imageHeight)
        '                    Dim stream As System.IO.MemoryStream = New MemoryStream()




        '                    bitmap.Save(Server.MapPath(f2), System.Drawing.Imaging.ImageFormat.Jpeg)
        '                    stream.Position = 0
        '                    Dim image As Byte() = New Byte(stream.Length) {}
        '                    stream.Read(image, 0, image.Length)

        '                ElseIf i = 1 Then
        '                    f5 = "~/Largeimg/" + f1 + r
        '                    f4 = "Largeimg/" + f1 + r
        '                    'hpf.SaveAs(Server.MapPath(f1))
        '                    Dim imageToBeResized As System.Drawing.Image = System.Drawing.Image.FromStream(hpf.InputStream)
        '                    Dim imageHeight As Integer = imageToBeResized.Height
        '                    Dim imageWidth As Integer = imageToBeResized.Width
        '                    Dim maxHeight As Integer = 450
        '                    Dim maxWidth As Integer = 550
        '                    imageHeight = (imageHeight * maxWidth) / imageWidth
        '                    imageWidth = maxWidth

        '                    If imageHeight > maxHeight Then
        '                        imageWidth = (imageWidth * maxHeight) / imageHeight
        '                        imageHeight = maxHeight
        '                    End If

        '                    Dim bitmap As New Bitmap(imageToBeResized, imageWidth, imageHeight)
        '                    Dim stream As System.IO.MemoryStream = New MemoryStream()


        '                    bitmap.Save(Server.MapPath(f5), System.Drawing.Imaging.ImageFormat.Jpeg)
        '                    stream.Position = 0
        '                    Dim image As Byte() = New Byte(stream.Length) {}
        '                    stream.Read(image, 0, image.Length)

        '                End If

        '            End If
        '            'Response.Write("<b>File: </b>" & hpf.FileName & " <b>Size:</b> " & hpf.ContentLength & " <b>Type:</b> " & hpf.ContentType & " Uploaded Successfully <br/>")
        '        Else
        '            strscript = "<script type=""text/javascript"">alert('Please Select File')</script>"
        '            If Not Page.IsStartupScriptRegistered("MyScript") Then
        '                Page.RegisterStartupScript("MyScript", strscript)
        '            End If
        '        End If
        '    Next

        '    'If Session("Name") = "" Or Session("Password") = "" Or Session("admin") <> "ADMIN" Then
        '    'Response.Redirect("default.aspx")
        '    'Else

        '    cmd = New SqlClient.SqlCommand("insert into product(catid,itemid,itemname,itemsize,itemprice,itemdesc,itemdetail,itemimage,itemlargeimg) values(" & DropDownList1.SelectedValue & ",'" & textbox2.Text & "','" & textbox3.Text & "','" & textbox4.Text & "','" & textbox5.Text & "','" & textbox6.Text & "','" & textbox7.Text & "','" & f3 & "','" & f4 & "')", sqlcon)
        '    cmd.ExecuteNonQuery()
        '    ',itemimage,itemlargeimg
        '    'gvCustomres.DataSource = SqlDataSource1
        '    gvCustomres.DataBind()
        '    labMessage.Text = "Record Added Successfully"
        '    textbox2.Text = ""
        '    'End If


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
        'If Not IsPostBack Then
        '    cmd = New SqlCommand("Select * from SemCode ORDER BY progcode", sqlcon)
        '    dr = cmd.ExecuteReader
        '    With DropDownList1
        '        .DataSource = dr
        '        .DataTextField = "progcode"
        '        .DataBind()
        '        .Items.Insert(0, "---Select---")
        '        dr.Close()
        '    End With

        'End If
    End Sub

    Protected Sub gvCustomres_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvCustomres.RowCommand
        'Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'sqlcon.Open()
        'Dim rct As Integer
        'Dim currentCommand As String = e.CommandName
        'If currentCommand <> "Page" Then
        '    Dim currentRowIndex As Integer = Int32.Parse(e.CommandArgument)
        '    Dim ProductID As String = gvCustomres.DataKeys(currentRowIndex).Value
        '    Session("ID") = ProductID
        '    If currentCommand = "Edit" Then
        '        'cmd = New SqlCommand("Select * from product where code=" & Session("ID") & " ", sqlcon)
        '        'dr = cmd.ExecuteReader
        '        'While dr.Read()
        '        '    DropDownList1.Text = dr(1)
        '        '    textbox2.Text = dr(2)
        '        '    textbox3.Text = dr(3)
        '        '    textbox4.Text = dr(4)
        '        '    textbox5.Text = dr(7)
        '        '    textbox6.Text = dr(8)
        '        '    textbox7.Text = dr(9)
        '        'End While

        '        Response.Redirect("addproduct.aspx")
        '    ElseIf currentCommand = "Delete" Then
        '        cmd = New SqlClient.SqlCommand("delete from product where code=" & ProductID & "", sqlcon)
        '        cmd.ExecuteNonQuery()
        '        'cmd = New SqlClient.SqlCommand("delete from photodesc where pcode=" & ProductID & "", sqlcon)
        '        'cmd.ExecuteNonQuery()
        '        'cmd = New SqlClient.SqlCommand("delete from inspected where pcode=" & ProductID & "", sqlcon)
        '        'cmd.ExecuteNonQuery()

        '        'cmd = New SqlClient.SqlCommand("Select count(*) from photodesc", sqlcon)
        '        'dr = cmd.ExecuteReader()
        '        'While dr.Read
        '        '    rct = dr(0)
        '        'End While
        '        'dr.Close()
        '        'If rct = 1 Then
        '        '    cmd = New SqlClient.SqlCommand("delete from photodesc", sqlcon)
        '        '    cmd.ExecuteNonQuery()

        '        'End If
        '    End If
        'End If
    End Sub

    Protected Sub btnAdd1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd1.Click
        btnAdd.Visible = True
        btnAdd0.Visible = False
        btnAdd1.Visible = False
        Session("ID") = ""
        textbox2.Text = ""
        textbox3.Text = ""
        textbox4.Text = ""
        textbox5.Text = ""
        'textbox6.Text = ""
        'textbox7.Text = ""
    End Sub

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

    Protected Sub btnAdd2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd2.Click
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        Dim ct As Integer
        textbox2.Text = ""
        textbox3.Text = ""
        textbox4.Text = ""
        textbox5.Text = ""
        textbox11.Text = ""
        textbox8.Text = ""
        textbox9.Text = ""
        cmd = New SqlCommand("Select count(*) from StuReg where rollno='" & textbox10.Text & "'", sqlcon)
        ct = cmd.ExecuteScalar
        If ct > 0 Then
            cmd = New SqlCommand("Select * from StuReg where rollno='" & textbox10.Text & "'", sqlcon)
            dr = cmd.ExecuteReader

            While (dr.Read())
                textbox2.Text = dr("procode")
                textbox3.Text = dr("coursename")
                textbox4.Text = dr("stuname")
                textbox5.Text = dr("dob")
                textbox11.Text = dr("batchfrom") + "-" + dr("batchto")
                textbox8.Text = dr("fathername")
                textbox9.Text = dr("mothername")
            End While
        Else
            strscript = "<script type=""text/javascript"">alert('No Record Found...')</script>"
            If Not Page.IsStartupScriptRegistered("MyScript") Then
                Page.RegisterStartupScript("MyScript", strscript)
            End If
        End If


    End Sub

    Protected Sub DropDownList2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.TextChanged
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        If DropDownList2.SelectedValue <> "---Select---" Then
            ada = New SqlClient.SqlDataAdapter("Select * From SemSubDetail where sem='" & DropDownList2.SelectedValue & "' and progcode='" & textbox2.Text & "'", sqlcon)
            ada.Fill(ds)
            gvCustomres.DataSource = ds.Tables(0)
            gvCustomres.DataBind()
            On Error Resume Next
            cmd = New SqlCommand("Select sum(maxmarks) from SemSubDetail where sem='" & DropDownList2.SelectedValue & "' and progcode='" & textbox2.Text & "'", sqlcon)
            dr = cmd.ExecuteReader
            While (dr.Read())
                TextBox12.Text = dr(0)
               
            End While
        End If
    End Sub

    Protected Sub btnAdd3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd3.Click
        Dim i, j As Integer
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        'Dim ctrow As Integer
        ada = New SqlClient.SqlDataAdapter("Select * From SemSubDetail where sem='" & DropDownList2.SelectedValue & "'", sqlcon)
        ada.Fill(ds, "temp")
        j = 0
        'For i = 0 To ds.Tables("temp").Rows.Count - 1
        For Each row As GridViewRow In gvCustomres.Rows
            Dim phone As String = DirectCast(row.FindControl("txtPhone"), TextBox).Text
            Dim subcode As String = DirectCast(row.FindControl("lblAddressId1"), Label).Text
            Dim subname As String = DirectCast(row.FindControl("lblAddressId2"), Label).Text
            Dim maxmarks As String = DirectCast(row.FindControl("lblAddressId3"), Label).Text
            cmd = New SqlClient.SqlCommand("insert into stumarks(rollno,subcode,subname,maxmarks,maxmobt,result,resultofsem) values('" & Trim(textbox10.Text) & "','" & subcode & "','" & subname & "','" & maxmarks & "'," & phone & "," & phone & "," & DropDownList2.SelectedValue & ")", sqlcon)
            cmd.ExecuteNonQuery()
        Next
        'Exit For
        'Next
    End Sub
End Class
