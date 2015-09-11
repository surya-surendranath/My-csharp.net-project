using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentGrantView : System.Web.UI.Page
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
    protected void btnGrant_Click(object sender, EventArgs e)
    {
        
            Session["studentID"] = txbResult.Text;
            //Response.Redirect("StudentGrants.aspx");
            Response.Redirect("StudentGrantadmin.aspx");
        
    }
}
