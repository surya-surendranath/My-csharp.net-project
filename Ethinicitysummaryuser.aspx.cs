using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Ethinicitysummaryuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            if (Session["Ethinicity"] != null)
            {
                txbRead.Text = Session["Ethinicity"].ToString();


                GridView1.DataBind();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "select  Ethinicity,count(distinct student_ID) as TotalStudents,SUM(grantvalue) as Funds,sum(ISNULL (Kuhafunds, 0)) as KohaFunds,(SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum from Student_vouchers where Ethinicity=@Ethinicity group by Ethinicity";
                //   cmd.CommandText = "select count(distinct student_ID) as NoofStudents,count(student_ID) as NoofGrants,sum(GrantValue) as MonthSum,sum(ISNULL(kuhafunds,0)) as KohaMonthSum ,(sum(GrantValue)+sum(ISNULL(kuhafunds,0))) as TotalMonthSum,datename(MONTH,DateOfIssue) as Monthname from Student_vouchers where Month(DateOfIssue) = @month and granttype=@Vouchers and Year(DateOfIssue)=@Year group by datename(MONTH,DateOfIssue)";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Ethinicity", txbRead.Text);

                con.Open();
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    //lblMsg.Text = "Total Amount Spent for " + dr["TotalGrants"] + " grants on " + dr["TotalStudents"] + " students for the month is $ " + dr["TotalGrantSum"];
                    lblMsgfunds.Text = "Amount spend from  Funds= $ " + dr["Funds"];
                    lblMsgKohafunds.Text = "Amount spend from Koha Funds= $ " + dr["KohaFunds"];
                    //  TitleTxt.Text = " Monthly Summary Report on all Vouchers, Harships and Advices for the month of " + dr["Monthname"] + " in Year " + txbReadYear.Text;

                }
                else
                {
                    TitleTxt.Visible = false;
                    GridView1.EmptyDataText = "Sorry, No data to display..!!";
                }
            }
        }
        else
        {
            Response.Redirect("Login_Page.aspx");
        }


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("GrantSummary.aspx");
    }
}