using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Configuration;
using System.Collections;

using System.Web.Security;


using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class MasterPage : System.Web.UI.MasterPage
{
   


    protected void Page_Load(object sender, EventArgs e)
    {
        //
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
        
                Response.Redirect("Userloginpage.aspx");
                
            }
 

          

        
        protected void btnMenu_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("GrantSummary.aspx");
    }
}
