Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim sqlcon As New SqlConnection
    Dim cmd As New SqlCommand
    Dim ada As New SqlDataAdapter
    Dim dr As SqlDataReader
    Dim strscript, f3, f4 As String
    Dim ds As New DataSet
   
    Private grdTotal As Decimal = 0
    Private grdTotal1 As Decimal = 0
    Private grdTotal2 As Decimal = 0
    Private grdTotal3 As Decimal = 0
    Private grdTotal4 As Decimal = 0
    Private grdTotal5 As Decimal = 0
    Private grdTotal6 As Decimal = 0
    Private grdTotal7 As Decimal = 0


    Private totmarks As Decimal = 0
    Private totmarks1 As Decimal = 0
    Private totmarks2 As Decimal = 0
    Private totmarks3 As Decimal = 0
    Private totmarks4 As Decimal = 0
    Private totmarks5 As Decimal = 0
    Private totmarks6 As Decimal = 0
    Private totmarks7 As Decimal = 0

    Dim percent As Double
    Dim percent1, percent2, percent3, percent4, percent5, percent6, percent7, percent8 As Double
    Dim overallper As Double


   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sqlcon As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        sqlcon.Open()
        On Error Resume Next
        cmd = New SqlCommand("Select * from StuReg where rollno='" & Session("RegNo") & "' ", sqlcon)
        dr = cmd.ExecuteReader
        While dr.Read()
            Label2.Text = dr("rollno")
            Label1.Text = dr("stuname")
            Label3.Text = dr("dob")
            Label4.Text = dr("fathername")
            Label5.Text = dr("mothername")
            Label6.Text = dr("ProCode")
            Label7.Text = dr("coursename")
            Label8.Text = dr("batchfrom") + "-" + dr("batchto")
            Label18.Text = dr("resulttype") + "-" + "1"
            Label11.Text = dr("resulttype") + "-" + "2"
            Label12.Text = dr("resulttype") + "-" + "3"
            Label13.Text = dr("resulttype") + "-" + "4"
            Label14.Text = dr("resulttype") + "-" + "5"
            Label15.Text = dr("resulttype") + "-" + "6"
            Label16.Text = dr("resulttype") + "-" + "7"
            Label17.Text = dr("resulttype") + "-" + "8"

        End While
        dr.Close()
        Dim no As Integer
        cmd = New SqlClient.SqlCommand("Select max(resultofsem) From stumarks where rollno='" & Session("RegNo") & "' ", sqlcon)
        dr = cmd.ExecuteReader

        While (dr.Read())
            no = dr(0)
        End While
        dr.Close()
        If no = 1 Then
            Label18.Visible = True
            Label11.Visible = False
            Label12.Visible = False
            Label13.Visible = False
            Label14.Visible = False
            Label15.Visible = False
            Label16.Visible = False
            Label17.Visible = False

        ElseIf no = 2 Then
            Label18.Visible = True
            Label11.Visible = True
            Label12.Visible = False
            Label13.Visible = False
            Label14.Visible = False
            Label15.Visible = False
            Label16.Visible = False
            Label17.Visible = False
        ElseIf no = 3 Then
            Label18.Visible = True
            Label11.Visible = True
            Label12.Visible = True
            Label13.Visible = False
            Label14.Visible = False
            Label15.Visible = False
            Label16.Visible = False
            Label17.Visible = False
        ElseIf no = 4 Then
            Label18.Visible = True
            Label11.Visible = True
            Label12.Visible = True
            Label13.Visible = True
            Label14.Visible = False
            Label15.Visible = False
            Label16.Visible = False
            Label17.Visible = False
        ElseIf no = 5 Then
            Label18.Visible = True
            Label11.Visible = True
            Label12.Visible = True
            Label13.Visible = True
            Label14.Visible = True
            Label15.Visible = False
            Label16.Visible = False
            Label17.Visible = False
        ElseIf no = 6 Then
            Label18.Visible = True
            Label11.Visible = True
            Label12.Visible = True
            Label13.Visible = True
            Label14.Visible = True
            Label15.Visible = True
            Label16.Visible = False
            Label17.Visible = False
        ElseIf no = 7 Then
            Label18.Visible = True
            Label11.Visible = True
            Label12.Visible = True
            Label13.Visible = True
            Label14.Visible = True
            Label15.Visible = True
            Label16.Visible = True
            Label17.Visible = False
        ElseIf no = 8 Then
            Label18.Visible = True
            Label11.Visible = True
            Label12.Visible = True
            Label13.Visible = True
            Label14.Visible = True
            Label15.Visible = True
            Label16.Visible = True
            Label17.Visible = True
        Else
            Label18.Visible = False
            Label11.Visible = False
            Label12.Visible = False
            Label13.Visible = False
            Label14.Visible = False
            Label15.Visible = False
            Label16.Visible = False
            Label17.Visible = False
        End If
        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=1", sqlcon)
        ada.Fill(ds, "1")
        gvCustomres.DataSource = ds.Tables("1")
        gvCustomres.DataBind()


        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=2", sqlcon)
        ada.Fill(ds, "2")
        GridView1.DataSource = ds.Tables("2")
        GridView1.DataBind()

        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=3", sqlcon)
        ada.Fill(ds, "3")
        GridView2.DataSource = ds.Tables("3")
        GridView2.DataBind()

        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=4", sqlcon)
        ada.Fill(ds, "4")
        GridView3.DataSource = ds.Tables("4")
        GridView3.DataBind()

        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=5", sqlcon)
        ada.Fill(ds, "5")
        GridView4.DataSource = ds.Tables("5")
        GridView4.DataBind()

        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=6", sqlcon)
        ada.Fill(ds, "6")
        GridView5.DataSource = ds.Tables("6")
        GridView5.DataBind()

        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=7", sqlcon)
        ada.Fill(ds, "7")
        GridView6.DataSource = ds.Tables("7")
        GridView6.DataBind()
        ada = New SqlClient.SqlDataAdapter("Select * From stumarks where rollno='" & Session("RegNo") & "' and resultofsem=8", sqlcon)
        ada.Fill(ds, "8")
        GridView7.DataSource = ds.Tables("8")
        GridView7.DataBind()
        If ds.Tables("1").Rows.Count > 0 Then
            overallper = Math.Round(percent)
        End If
        If ds.Tables("1").Rows.Count > 0 And ds.Tables("2").Rows.Count > 0 Then
            overallper = Math.Round(percent + percent1) / 2
        End If
        If ds.Tables("1").Rows.Count > 0 And ds.Tables("2").Rows.Count > 0 And ds.Tables("3").Rows.Count > 0 Then
            overallper = Math.Round(percent + percent1 + percent2) / 3
        End If
        If ds.Tables("1").Rows.Count > 0 And ds.Tables("2").Rows.Count > 0 And ds.Tables("3").Rows.Count > 0 And ds.Tables("4").Rows.Count > 0 Then
            overallper = Math.Round(percent + percent1 + percent2 + percent3) / 4
        End If
        If ds.Tables("1").Rows.Count > 0 And ds.Tables("2").Rows.Count > 0 And ds.Tables("3").Rows.Count > 0 And ds.Tables("4").Rows.Count > 0 And ds.Tables("5").Rows.Count > 0 Then
            overallper = Math.Round(percent + percent1 + percent2 + percent3 + percent4) / 5
        End If

        If ds.Tables("1").Rows.Count > 0 And ds.Tables("2").Rows.Count > 0 And ds.Tables("3").Rows.Count > 0 And ds.Tables("4").Rows.Count > 0 And ds.Tables("5").Rows.Count > 0 And ds.Tables("6").Rows.Count > 0 Then
            overallper = Math.Round(percent + percent1 + percent2 + percent3 + percent4 + percent5) / 6
        End If

        If ds.Tables("1").Rows.Count > 0 And ds.Tables("2").Rows.Count > 0 And ds.Tables("3").Rows.Count > 0 And ds.Tables("4").Rows.Count > 0 And ds.Tables("5").Rows.Count > 0 And ds.Tables("6").Rows.Count > 0 And ds.Tables("7").Rows.Count > 0 Then
            overallper = Math.Round(percent + percent1 + percent2 + percent3 + percent4 + percent5 + percent6) / 7
        End If

        If ds.Tables("1").Rows.Count > 0 And ds.Tables("2").Rows.Count > 0 And ds.Tables("3").Rows.Count > 0 And ds.Tables("4").Rows.Count > 0 And ds.Tables("5").Rows.Count > 0 And ds.Tables("6").Rows.Count > 0 And ds.Tables("7").Rows.Count > 0 And ds.Tables("8").Rows.Count > 0 Then
            overallper = Math.Round(percent + percent1 + percent2 + percent3 + percent4 + percent5 + percent6 + percent7) / 8
        End If

        If overallper > 50 And overallper < 60 Then
            Label10.Text = "B Grade"
        ElseIf overallper > 60 And overallper < 70 Then
            Label10.Text = "B+ Grade"
        ElseIf overallper > 70 And overallper < 80 Then
            Label10.Text = "A Grade"
        ElseIf overallper > 80 And overallper < 90 Then
            Label10.Text = "A+ Grade"
        ElseIf overallper > 90 And overallper < 100 Then
            Label10.Text = "A++ Grade"
        End If
    End Sub

   
    Protected Sub gvCustomres_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles gvCustomres.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal = grdTotal + rowTotal

            Dim rowTotal1 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks = totmarks + rowTotal1

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks.ToString()

            percent = Math.Round((grdTotal * 100) / totmarks, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent.ToString() + "%"
        End If
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal1 = grdTotal1 + rowTotal

            Dim rowTotal1 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks1 = totmarks1 + rowTotal1

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal1.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks1.ToString()
            percent1 = Math.Round((grdTotal1 * 100) / totmarks1, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent1.ToString() + "%"
        End If
    End Sub

    Protected Sub GridView2_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView2.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal2 = grdTotal2 + rowTotal

            Dim rowTotal1 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks2 = totmarks2 + rowTotal1

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal2.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks1.ToString()

            percent2 = Math.Round((grdTotal2 * 100) / totmarks2, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent2.ToString() + "%"
        End If
    End Sub

    Protected Sub GridView3_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView3.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal3 = grdTotal3 + rowTotal

            Dim rowTotal1 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks3 = totmarks3 + rowTotal1

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal3.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks3.ToString()

            percent3 = Math.Round((grdTotal3 * 100) / totmarks3, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent3.ToString() + "%"
        End If
    End Sub

    Protected Sub GridView4_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView4.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal4 = grdTotal4 + rowTotal

            Dim rowTotal4 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks4 = totmarks4 + rowTotal4

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal4.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks4.ToString()

            percent4 = Math.Round((grdTotal4 * 100) / totmarks4, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent4.ToString() + "%"
        End If
    End Sub

    Protected Sub GridView5_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView5.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal5 = grdTotal5 + rowTotal

            Dim rowTotal1 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks5 = totmarks5 + rowTotal1

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal5.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks5.ToString()

            percent5 = Math.Round((grdTotal5 * 100) / totmarks5, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent5.ToString() + "%"
        End If
    End Sub

    Protected Sub GridView6_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView6.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal6 = grdTotal6 + rowTotal

            Dim rowTotal6 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks6 = totmarks6 + rowTotal6

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal6.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks6.ToString()

            percent6 = Math.Round((grdTotal6 * 100) / totmarks6, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent6.ToString() + "%"
        End If
    End Sub

    Protected Sub GridView7_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView7.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim rowTotal As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmobt"))
            grdTotal7 = grdTotal7 + rowTotal

            Dim rowTotal7 As Decimal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "maxmarks"))
            totmarks7 = totmarks7 + rowTotal7

            'Dim rowTotal2 As Double = DataBinder.Eval(e.Row.DataItem, "result")
            'totmarks = totmarks + rowTotal1
        End If

        If e.Row.RowType = DataControlRowType.Footer Then
            Dim lbl As Label = DirectCast(e.Row.FindControl("lblTotal"), Label)
            lbl.Text = grdTotal7.ToString()
            Dim lbl1 As Label = DirectCast(e.Row.FindControl("lblTotal1"), Label)
            lbl1.Text = totmarks7.ToString()

            percent7 = Math.Round((grdTotal7 * 100) / totmarks7, 2)

            Dim lbl2 As Label = DirectCast(e.Row.FindControl("lblTotal2"), Label)
            lbl2.Text = percent7.ToString() + "%"
        End If
    End Sub
End Class
