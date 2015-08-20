using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Monthlycampussummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            if (Session["GrantMonth"] != null && Session["year"] != null)
            {
                txbRead.Text = Session["GrantMonth"].ToString();
                txbReadYear.Text = Session["year"].ToString();
                GridView1.DataBind();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "select  datename(MONTH,DateOfIssue) as Monthname from Student_vouchers where MONTH(DateOfIssue)=@month and Year(DateOfIssue)=@Year group by  datename(MONTH,DateOfIssue)";

                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@month", txbRead.Text);
                cmd.Parameters.AddWithValue("@year", txbReadYear.Text);
                con.Open();
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TitleTXT.Text = "Overall Monthly Summary Report on all Campuses for the month of " + dr["Monthname"] + " in the Year " + txbReadYear.Text;
                }
                else
                {
                    GridView1.EmptyDataText = "Sorry, No data to display..!!";
                }
            }
        }
        else
        {
           // Response.Redirect("Login_Page.aspx");
        }
    }
}
