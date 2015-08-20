using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Studentgrantsummaryuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     if (Session["StudentID"] != null)
        {
            txbRead.Text = Session["StudentID"].ToString();
            GridView1.DataBind();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "select student_ID,GrantType,GrantDescription,GrantValue,YEAR(DateOfIssue) AS EXP1,KuhaFunds,Refno from Student_vouchers where student_ID=@StudentID";
            //   cmd.CommandText = "select count(distinct student_ID) as NoofStudents,count(student_ID) as NoofGrants,sum(GrantValue) as MonthSum,sum(ISNULL(kuhafunds,0)) as KohaMonthSum ,(sum(GrantValue)+sum(ISNULL(kuhafunds,0))) as TotalMonthSum,datename(MONTH,DateOfIssue) as Monthname from Student_vouchers where Month(DateOfIssue) = @month and granttype=@Vouchers and Year(DateOfIssue)=@Year group by datename(MONTH,DateOfIssue)";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@StudentID", txbRead.Text);

            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TitleTxt.Text = "Student Grant Summary Report";
            }
            else
            {
                TitleTxt.Visible = false;
            }
        }
    }
    protected void txbRead_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("Studentgrantadminuser.aspx");
        
    }
}

