using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FacultyGrantSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            if (Session["FacultyMonth"] != null)
            {
                TxbFacultyYear.Text = Session["FacultyYear"].ToString();
                TxbFacultyMonth.Text = Session["FacultyMonth"].ToString();
                TitleTXT.Text = "Monthly ";
                GridView1.DataBind();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "select  datename(MONTH,DateOfIssue) as Monthname from Student_vouchers where MONTH(DateOfIssue)=@month and Year(DateOfIssue)=@Year group by  datename(MONTH,DateOfIssue)";

                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@month", TxbFacultyMonth.Text);
                cmd.Parameters.AddWithValue("@year", TxbFacultyYear.Text);
                con.Open();
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TitleTXT.Text = "Monthly Summary Report on all Vouchers, Harships and Advices for all Faculties for the month of " + dr["Monthname"] + " in Year " + TxbFacultyYear.Text;
                }
                else
                {
                    TitleTXT.Visible = false;
                }
            }
        }
        else
        {
            //Response.Redirect("Login_Page.aspx");
        }


    }
}
