using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            ((Button)this.Master.FindControl("btnMenu")).Visible = false;
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }
        else
        {
            Response.Redirect("NewAdmin.aspx");
        }

    }

    protected void btnSearchStudent_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchStudent.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if ((ddlMonth.SelectedIndex == 0) || (ddlweeklyYear.SelectedIndex == 0))
        {
            Response.Write("<script>alert('Please make sure you have selected the month and year.')</script>");
            ddlVoucher.SelectedIndex = 0;
        }
        else
        {
            Session["Vouchers"] = ddlVoucher.SelectedValue;
            Session["Month"] = ddlMonth.SelectedValue;
            Session["weeklyYear"] = ddlweeklyYear.SelectedValue;
            Response.Redirect("WeeklySummary.aspx");
        }


    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddStudentAdmin.aspx");
    }

    protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlGrantMonth.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please make sure you have selected the month.')</script>");
            ddlyear.SelectedIndex = 0;
            return;
        }
        else
        {
            Session["GrantMonth"] = ddlGrantMonth.SelectedValue;
            Session["year"] = ddlyear.SelectedValue;
            Response.Redirect("MonthlyGrantSummary.aspx");
        }

    }


    protected void ddlYeartodateyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlYeartodateyear.SelectedValue.ToString() != "")
        {
            Session["Year"] = ddlYeartodateyear.SelectedValue;
            Response.Redirect("Year-to-DateSummary.aspx");
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Session["Date"] = Calendar1.SelectedDate;
        Response.Redirect("DateGrants.aspx");
    }

    protected void ddlfacultyyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlFacultyMonth.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please make sure you have selected the month.')</script>");
            ddlfacultyyear.SelectedIndex = 0;
        }
        else
        {
            Session["FacultyYear"] = ddlfacultyyear.SelectedValue;
            Session["FacultyMonth"] = ddlFacultyMonth.SelectedValue;
            Response.Redirect("SummaryByFaculty.aspx");
        }


    }


    protected void ddlYearfacultybygrant_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlmonthfacultybygrantmonth.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please make sure you have selected the month.')</script>");
            ddlYearfacultybygrantYear.SelectedIndex = 0;
        }
        else
        {
            Session["FacultyYear"] = ddlYearfacultybygrantYear.SelectedValue;
            Session["FacultyMonth"] = ddlmonthfacultybygrantmonth.SelectedValue;
            Response.Redirect("FacultyGrantSummary.aspx");
        }

    }


    protected void DDYearCampus_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DDMonthCampus.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please make sure you have selected the month.')</script>");
            DDYearCampus.SelectedIndex = 0;
        }
        else
        {
            Session["GrantMonth"] = DDMonthCampus.SelectedValue;
            Session["year"] = DDYearCampus.SelectedValue;
            Response.Redirect("MonthCampusGrantSummary.aspx");
        }
    }
    protected void DDcampusyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DDcampusmonth.SelectedIndex == 0)
        {
            Response.Write("<script>alert('Please make sure you have selected the month.')</script>");
            DDcampusyear.SelectedIndex = 0;
        }
        else
        {
            Session["GrantMonth"] = DDcampusmonth.SelectedValue;
            Session["year"] = DDcampusyear.SelectedValue;
            Response.Redirect("Monthlycampussummary.aspx");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddUser1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Changepassword.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addfacultyadmin.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentgrantAddadmin.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["Age1"] = ddlFacultyAge.SelectedValue;
        Response.Redirect("AgeSummary.aspx");
    }
    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
    {
        Session["Ethinicity"] = ddlEthinicity.SelectedValue;
        Response.Redirect("EthinicitySummary.aspx");
    }
    protected void ddlweeklyYear1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged3(object sender, EventArgs e)
    {
        if ((ddlMonth.SelectedIndex == 0) || (ddlweeklyYear.SelectedIndex == 0)) 
       
        {
            Response.Write("<script>alert('Please make sure you have selected the month and year.')</script>");
            ddlVoucher.SelectedIndex = 0;
        }
        else
        {
            Session["Vouchers"] = ddlVoucher.SelectedValue;
            Session["Month"] = ddlMonth.SelectedValue;
            Session["weeklyYear"] = ddlweeklyYear.SelectedValue;
            Response.Redirect("WeeklySummary.aspx");
        }

          
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
{
         if ((ddlMonth.SelectedIndex == 0) || (ddlweeklyYear.SelectedIndex == 0)) 
       
        {
            Response.Write("<script>alert('Please make sure you have selected the month and year.')</script>");
            ddlVoucher.SelectedIndex = 0;
        }
        else
        {
            Session["Vouchers"] = ddlVoucher.SelectedValue;
            Session["Month"] = ddlMonth.SelectedValue;
            Session["weeklyYear"] = ddlweeklyYear.SelectedValue;
            Response.Redirect("MonthlySummary.aspx");
        
          
}
}
    protected void ddlweeklyYear_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

        if ((ddlMonth1.SelectedIndex == 0) || (ddlweeklyYear1.SelectedIndex == 0))
        {
            Response.Write("<script>alert('Please make sure you have selected the month and year.')</script>");
            ddlVoucher1.SelectedIndex = 0;
        }
        else
        {
            Session["Vouchers"] = ddlVoucher1.SelectedValue;
           Session["Month"] = ddlMonth1.SelectedValue;
            Session["weeklyYear"] = ddlweeklyYear1.SelectedValue;
            Response.Redirect("MonthlySummary.aspx");
        }


    }

    protected void ddlVoucher2_SelectedIndexChanged(object sender, EventArgs e)
{
        if ( (ddlweeklyYear2.SelectedIndex == 0))
        {
            Response.Write("<script>alert('Please make sure you have selected the month and year.')</script>");
            ddlVoucher2.SelectedIndex = 0;
        }
        else
        {
            Session["Vouchers"] = ddlVoucher2.SelectedValue;
           // Session["Month"] = ddlMonth0.SelectedValue;
            Session["weeklyYear"] = ddlweeklyYear2.SelectedValue;
            Response.Redirect("YearlySummary.aspx");
        }


    }
}

