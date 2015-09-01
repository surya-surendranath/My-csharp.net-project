using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DateGrants : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            if (Session["Date"] != null)
            {
                Txbdate.Text = Session["Date"].ToString();
            }

            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("Login_Page.aspx");
        }
    }
}
