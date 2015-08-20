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


        if (Request.QueryString["Name"] != null)
            txbRead.Text = Request.QueryString["Name"];

        GridView1.DataBind();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select SUM(TotalStudents) as TotalStudents,SUM(Totalamount) as Totalamount from(select A.GrantType,Month(A.DateOfIssue) as CurrentMonth,COUNT(distinct A.student_ID) as TotalStudents,SUM(Grantvalue) as Totalamount, B.campus from Student_vouchers as A join Student_Registration_Form as B on A.student_ID=B.Student_ID where MONTH(A.DateOfIssue)=@Month group by GrantType,Month(A.DateOfIssue),campus) as A ";

        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Month", txbRead.Text);
        con.Open();
        cmd.ExecuteNonQuery();

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TotalStudents.Text = dr["TotalStudents"].ToString();
            TotalAmount.Text = dr["Totalamount"].ToString();
        }
        else
        {
            Response.Write("Sorry no data");
        }
        lblstudent.Text = "The total students in ( code here) campus is " + dr["TotalStudents"].ToString();
        lblsum.Text = "The total grant amount in ( code here) campus is $" + dr["Totalamount"].ToString();
    }
}
