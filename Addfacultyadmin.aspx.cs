using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Addfacultyadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

         SqlCommand cmd = new SqlCommand("Insert into Faculty(Faculty) values (@Faculty)", con);
         cmd.Parameters.AddWithValue("@Faculty", TextBox1.Text);
         con.Open();
         cmd.ExecuteNonQuery();
         Response.Write("<script>alert('Faculty created successfully')</script>");
         con.Close();
        // Response.Redirect(Request.Url.AbsoluteUri);
        
         if ( TextBox1.Text != "")
         { Response.Redirect(Request.RawUrl); 
         }
    }

    protected void Button2_Click(object sender, System.EventArgs e)
    {
        try { 
        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd2 = new SqlCommand("Insert into Faculty(Faculty,Courses) values (@Faculty1,@Course)", con2);
        cmd2.Parameters.AddWithValue("@Faculty1", DropDownList1.Text);
        cmd2.Parameters.AddWithValue("@Course", TextBox2.Text);
        con2.Open();
        cmd2.ExecuteNonQuery();
        con2.Close();
        Response.Write("<script>alert('Course created succesfully')</script>");
        }
            catch
            { Response.Write("<script>alert('Please select a faculty')</script>");
                DropDownList1.Focus();}
        }
    
}