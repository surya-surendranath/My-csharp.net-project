using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Year_to_DateSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            if (Session["Year"] != null)
                txbYear.Text = Session["Year"].ToString();
            GridView1.DataBind();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "select COUNT(distinct student_ID) as TotalStudents,COUNT(student_ID) as TotalGrants,SUM(grantvalue) as GrantAmount,SUM(ISNULL(kuhafunds,0)) as KohaGrantAmount,SUM(grantvalue)+SUM(ISNULL(kuhafunds,0)) as TotalGrantAmount from Student_vouchers where YEAR(DateOfIssue)=@Year";

            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Year", txbYear.Text);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                TotalSum.Text = "     The Total Amount Year-to-date on all grants is: $" + dr["TotalGrantAmount"].ToString() + " (Grant Amount= " + dr["GrantAmount"] + " , Koha Funds Grant Amount= " + dr["KohaGrantAmount"] + " )";
                TotalGrants.Text = "  The Total Grants issued Year-to-date  is: " + dr["TotalGrants"].ToString();
                Totalstudents.Text = "The Total Students received grants Year-to-date  is: " + dr["TotalStudents"].ToString();
                TitleTXT.Text = "Overall Summary for all Vouchers, Hardships and Advices for the Year " + txbYear.Text + " Year-to-date";
               
            }
            else
            {
                TitleTXT.Visible = false;
            }
        }
        else
        {
            Response.Redirect("Login_Page.aspx");
        }


    }
    
}



