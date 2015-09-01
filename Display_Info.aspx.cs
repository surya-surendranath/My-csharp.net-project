using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Display_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            if (Session["studentID"] != null)
                txbResult.Text = Session["studentID"].ToString();
        }
        else
        {
            Response.Redirect("Login_Page.aspx");
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchStudent.aspx");
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow selectRow = GridView1.SelectedRow;
        
        Session["studentID"] = GridView1.DataKeys[selectRow.RowIndex]["Student_ID"].ToString();
       Response.Redirect("StudentGrantView.aspx");
    }
}
