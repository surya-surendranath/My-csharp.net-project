using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MonthlyGrantSummary : System.Web.UI.Page
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

                cmd.CommandText = "select Monthname,TotalStudents,TotalGrants,Funds,KohaFunds,TotalGrantSum from(select  datename(MONTH,DateOfIssue) as Monthname,count(distinct student_ID) as TotalStudents,SUM(grantvalue) as Funds,sum(ISNULL (Kuhafunds, 0)) as KohaFunds,(SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum from Student_vouchers where MONTH(DateOfIssue)=5 and Year(DateOfIssue)=2010 group by  datename(MONTH,DateOfIssue)) as A cross join(select count(Student_ID) as TotalGrants from Student_vouchers where MONTH(DateOfIssue)=5 and Year(DateOfIssue)=2010 and GrantType<>'Advice'group by  datename(MONTH,DateOfIssue)) as B";

                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@month", txbRead.Text);
                cmd.Parameters.AddWithValue("@year", txbReadYear.Text);
                con.Open();
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblMsg.Text = "Total Amount Spent for " + dr["TotalGrants"] + " grants on " + dr["TotalStudents"] + " students for the month is $ " + dr["TotalGrantSum"];
                    lblMsgfunds.Text = "Amount spend from  Funds= $ " + dr["Funds"];
                    lblMsgKohafunds.Text = "Amount spend from Koha Funds= $ " + dr["KohaFunds"];
                    TitleTxt.Text = " Monthly Summary Report on all Vouchers, Harships and Advices for the month of " + dr["Monthname"] + " in Year " + txbReadYear.Text;
                 
                }
                else
                {
                    TitleTxt.Visible = false;
                }
            }
        }
        else
        {
          //  Response.Redirect("Login_Page.aspx");
        }
       

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
