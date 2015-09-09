using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MonthCampusSummary : System.Web.UI.Page
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

            cmd.CommandText = "select datename(MONTH,A.DateOfIssue) as CurrentMonth, COUNT(distinct A.student_ID) as TotalStudents,COUNT( A.student_ID) as TotalGrants,SUM(Grantvalue+ISNULL(KuhaFunds,0)) as Totalamount, B.campus from Student_vouchers as A join Student_Registration_Form as B on A.student_ID=B.Student_ID where MONTH(A.DateOfIssue)=@Month and Year(A.DateOfIssue)=@Year group by datename(MONTH,A.DateOfIssue),campus";

            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Month", txbRead.Text);
            cmd.Parameters.AddWithValue("@Year", txbReadYear.Text);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblstudent.Text = "The Total  grant amount received by " + dr["campus"].ToString() + " is $" + dr["Totalamount"].ToString() + " for " + dr["TotalGrants"].ToString() + " grants" + " ( " + dr["TotalStudents"].ToString() + " Students)";
                TitleTXT.Text = "Monthly Summary Report on all Vouchers, Hardships and Advices in all campuses for the month of " + dr["CurrentMonth"] + " in Year " + txbReadYear.Text;
            }
            else
            {
                TitleTXT.Visible = false;
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
