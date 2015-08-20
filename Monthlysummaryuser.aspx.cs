using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Monthlysummaryuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] == null)
        {
            Response.Redirect("Userloginpage.aspx");
        }
        else
        {

            if (Session["Vouchers"] != null && Session["Month"] != null && Session["weeklyYear"] != null)

                txbReadVoucher.Text = Session["Vouchers"].ToString();
            txbReadWeeklyYear.Text = Session["weeklyYear"].ToString();
            txbReadMonth.Text = Session["Month"].ToString();

            GridView1.DataBind();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "select count(distinct student_ID) as NoofStudents,count(student_ID) as NoofGrants,sum(GrantValue) as MonthSum,sum(ISNULL(kuhafunds,0)) as KohaMonthSum ,(sum(GrantValue)+sum(ISNULL(kuhafunds,0))) as TotalMonthSum,datename(MONTH,DateOfIssue) as Monthname from Student_vouchers where Month(DateOfIssue) = @month and granttype=@Vouchers and Year(DateOfIssue)=@Year group by datename(MONTH,DateOfIssue)";

            cmd.Connection = con;

            cmd.Parameters.AddWithValue("@month", txbReadMonth.Text);
            cmd.Parameters.AddWithValue("@Year", txbReadWeeklyYear.Text);
            cmd.Parameters.AddWithValue("@Vouchers", txbReadVoucher.Text);
            con.Open();
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                if (txbReadVoucher.Text == "PetrolVouchers")
                {
                    lblMsg.Text = "Total Amount Spent on Petrol Vouchers for " + dr["NoofGrants"] + " grants on " + dr["NoofStudents"] + " students for the month is $ " + dr["TotalMonthSum"];
                    lblMsgfunds.Text = "Amount spend from  Funds= $ " + dr["MonthSum"];
                    lblMsgKohafunds.Text = "Amount spend from Koha Funds= $ " + dr["KohaMonthSum"];
                    Titletext.Visible = true;
                    Titletext.Text = "Summary Report on Petrol Vouchers for the month of " + dr["Monthname"] + " in Year " + txbReadWeeklyYear.Text;
                }
                else if (txbReadVoucher.Text == "Hardship")
                {
                    lblMsg.Text = "Total Amount Spent on Hardships for " + dr["NoofGrants"] + " grants on " + dr["NoofStudents"] + " students for the month is $ " + dr["TotalMonthSum"];
                    lblMsgfunds.Text = "Amount spend from  Funds= $ " + dr["MonthSum"];
                    lblMsgKohafunds.Text = "Amount spend from Koha Funds= $ " + dr["KohaMonthSum"];
                    Titletext.Visible = true;
                    Titletext.Text = "Summary Report on Hardship for the month of " + dr["Monthname"] + " in Year " + txbReadWeeklyYear.Text;
                }
                else if (txbReadVoucher.Text == "TrainTickets")
                {
                    lblMsg.Text = "Total Amount Spent on Train Tickets for " + dr["NoofGrants"] + " grants on " + dr["NoofStudents"] + " students for the month is $ " + dr["TotalMonthSum"];
                    lblMsgfunds.Text = "Amount spend from  Funds= $ " + dr["MonthSum"];
                    lblMsgKohafunds.Text = "Amount spend from Koha Funds= $ " + dr["KohaMonthSum"];
                    Titletext.Visible = true;
                    Titletext.Text = "Summary Report on Train Tickets for the month of " + dr["Monthname"] + " in Year " + txbReadWeeklyYear.Text;
                }
                else if (txbReadVoucher.Text == "FoodVouchers")
                {
                    lblMsg.Text = "Total Amount Spent on Food Vouchers for " + dr["NoofGrants"] + " grants on " + dr["NoofStudents"] + " students for the month is $ " + dr["TotalMonthSum"];
                    lblMsgfunds.Text = "Amount spend from  Funds= $ " + dr["MonthSum"];
                    lblMsgKohafunds.Text = "Amount spend from Koha Funds= $ " + dr["KohaMonthSum"];
                    Titletext.Visible = true;
                    Titletext.Text = "Summary Report on Food Vouchers for the month of " + dr["Monthname"] + " in Year " + txbReadWeeklyYear.Text;
                }
                else if (txbReadVoucher.Text == "Advice")
                {
                    lblMsg.Text = "Total Amount Spent on Advice for " + dr["NoofGrants"] + " grants on " + dr["NoofStudents"] + " students for the month is $ " + dr["TotalMonthSum"];
                    lblMsgfunds.Text = "Amount spend from  Funds= $ " + dr["MonthSum"];
                    lblMsgKohafunds.Text = "Amount spend from Koha Funds= $ " + dr["KohaMonthSum"];
                    Titletext.Visible = true;
                    Titletext.Text = " Summary Report on Advice for the month of " + dr["Monthname"] + " in Year " + txbReadWeeklyYear.Text;
                }
            }
            else
            {
                GridView1.EmptyDataText = "Sorry, No data to display..!!";
            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("GrantSummary.aspx");
    }
}