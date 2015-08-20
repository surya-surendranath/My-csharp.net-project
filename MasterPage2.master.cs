using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //clearing the session
        Session.Abandon();
        Session.Clear();
        //redirecting it to login page
        
                Response.Redirect("NewAdmin.aspx");
                
            }
 

          

        
        protected void btnMenu_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("Grantsumadmin.aspx");
    }
}
    
