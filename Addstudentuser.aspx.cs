using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Addstudentuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] == null)
        {
            Response.Redirect("Userloginpage.aspx");

        }
    }
    protected void ButtonAddStudent_Click(object sender, EventArgs e)
    {

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "Select student_ID from Student_Registration_Form";
        cmd1.Connection = con1;
        con1.Open();
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        DateTime DOB;

        if (txbID.Text == "")
        {
            Response.Write("<script>alert('Please input Student ID')</script>");
            txbID.Focus();
        }

        else if (txbFname.Text == "")
        {
            Response.Write("<script>alert('Please enter the first name of the student')</script>");
            txbFname.Focus();
        }
        else if (ddlFaculty.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select the Faculty of the student')</script>");
            ddlFaculty.Focus();
        }
        else if (ddlGender.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select the gender of the student')</script>");
            ddlGender.Focus();
        }
        else if (txbDOB.Text == "")
        {

            Response.Write("<script>alert('Please input the Date of Birth')</script>");
            txbDOB.Focus();
        }


        else if (ddlCampus.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select a campus')</script>");
            ddlCampus.Focus();

        }


        else
        {

            while (dr.Read())
            {

                if (dr["student_ID"].ToString() == txbID.Text.Trim())
                {
                    Response.Write("<script>alert('Student already exists')</script>");
                    return;
                }

            }

            try
            {

                DOB = Convert.ToDateTime(txbDOB.Text);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd = new SqlCommand("INSERT INTO Student_Registration_Form (Student_ID,FName,LName,Gender,DOB,Address1,Accomodition_Type,Phone,Mobile,Email,Marital_Status,Contact,Main_Ethnicity,Faculty,Courses,Detailed_Ethnicity,campus) VALUES (@Student_ID,@FName,@LName,@Gender,@DOB,@Address,@Accomodition_Type,@Phone,@Mobile,@Email,@Marital_Status,@Contact,@Main_Ethnicity,@Faculty,@Courses,@Detailed_Ethnicity,@campus)", con);

                cmd.Parameters.AddWithValue("@Student_ID", txbID.Text);
                cmd.Parameters.AddWithValue("@FName", txbFname.Text);
                cmd.Parameters.AddWithValue("@LName", txbLname.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@DOB", txbDOB.Text);
                cmd.Parameters.AddWithValue("@Address", txbAddress.Text);
                cmd.Parameters.AddWithValue("@Accomodition_Type", ddlAccomodition.SelectedValue);
                cmd.Parameters.AddWithValue("@Phone", txbPhone.Text);
                cmd.Parameters.AddWithValue("@Mobile", txbMobile.Text);
                cmd.Parameters.AddWithValue("@Email", txbEmail.Text);
                cmd.Parameters.AddWithValue("@Marital_Status", ddlStatus.SelectedValue);
                cmd.Parameters.AddWithValue("@Contact", ddlContact.SelectedValue);
                cmd.Parameters.AddWithValue("@Main_Ethnicity", ddlEthnicity.SelectedValue);
                cmd.Parameters.AddWithValue("@Faculty", ddlFaculty.SelectedValue);
                cmd.Parameters.AddWithValue("@Detailed_Ethnicity", txbEthnicity.Text);
                cmd.Parameters.AddWithValue("@campus", ddlCampus.SelectedValue);
                if (ddlArts.Visible == true)
                {
                    cmd.Parameters.AddWithValue("@Courses", ddlArts.SelectedValue);
                }
                else if (ddlBusiness.Visible == true)
                {
                    cmd.Parameters.AddWithValue("@Courses", ddlBusiness.SelectedValue);
                }
                else if (ddlIndustries.Visible == true)
                {
                    cmd.Parameters.AddWithValue("@Courses", ddlIndustries.SelectedValue);
                }
                else if (ddlTrades.Visible == true)
                {
                    cmd.Parameters.AddWithValue("@Courses", ddlTrades.SelectedValue);
                }
                else if (ddlMaori.Visible == true)
                {
                    cmd.Parameters.AddWithValue("@Courses", ddlMaori.SelectedValue);
                }
                else if (ddlHealth.Visible == true)
                {
                    cmd.Parameters.AddWithValue("@Courses", ddlHealth.SelectedValue);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Courses", ddlFaculty.SelectedValue);
                }

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Student Added Successfully..!!!')</script>");

                txbID.Text = "";
                txbFname.Text = "";
                txbLname.Text = "";
                txbDOB.Text = "";
                txbAddress.Text = "";
                txbMobile.Text = "";
                txbPhone.Text = "";
                txbEmail.Text = "";
                txbEthnicity.Text = "";


                ddlGender.SelectedIndex = 0;
                ddlAccomodition.SelectedIndex = 0;
                ddlContact.SelectedIndex = 0;
                ddlStatus.SelectedIndex = 0;
                ddlEthnicity.SelectedIndex = 0;
                ddlCampus.SelectedIndex = 0;
                ddlFaculty.SelectedIndex = 0;

                ddlMaori.Visible = false;
                ddlTrades.Visible = false;
                ddlIndustries.Visible = false;
                ddlBusiness.Visible = false;
                ddlArts.Visible = false;
                ddlHealth.Visible = false;
            }
            catch
            {
                Response.Write("<script>alert('Please input the right format for Date Of Birth')</script>");
                txbDOB.Focus();
            }

        }


    }


    protected void txbID_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txbFname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txbLname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txbDOB_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txbAddress_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlAccomodition_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txbMobile_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txbPhone_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txbEmail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlContact_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlCampus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlFaculty_SelectedIndexChanged(object sender, EventArgs e)
    {


        if (ddlFaculty.SelectedValue == "Faculty of Business")
        {
            ddlArts.Visible = false;
            //   ddlBusiness.Visible = true;
            ddlHealth.Visible = false;
            ddlIndustries.Visible = false;
            ddlTrades.Visible = false;
            ddlMaori.Visible = false;
            ddlBusiness.Focus();
        }
        else if (ddlFaculty.SelectedValue == "Faculty of Health")
        {
            ddlArts.Visible = false;
            ddlBusiness.Visible = false;
            //  ddlHealth.Visible = true;
            ddlIndustries.Visible = false;
            ddlTrades.Visible = false;
            ddlMaori.Visible = false;
            ddlHealth.Focus();
        }
        else if (ddlFaculty.SelectedValue == "Faculty of Service Industries")
        {
            ddlArts.Visible = false;
            ddlBusiness.Visible = false;
            ddlHealth.Visible = false;
            //  ddlIndustries.Visible = true;
            ddlTrades.Visible = false;
            ddlMaori.Visible = false;
            ddlIndustries.Focus();
        }
        else if (ddlFaculty.SelectedValue == "Faculty of Trades")
        {
            ddlArts.Visible = false;
            ddlBusiness.Visible = false;
            ddlHealth.Visible = false;
            ddlIndustries.Visible = false;
            // ddlTrades.Visible = true;
            ddlMaori.Visible = false;
            ddlTrades.Focus();
        }
        else if (ddlFaculty.SelectedValue == "Te Wananga Maori")
        {
            ddlArts.Visible = false;
            ddlBusiness.Visible = false;
            ddlHealth.Visible = false;
            ddlIndustries.Visible = false;
            ddlTrades.Visible = false;
            //ddlMaori.Visible = true;
            ddlMaori.Focus();
        }
        else
        {
            // ddlArts.Visible = true;
            ddlBusiness.Visible = false;
            ddlHealth.Visible = false;
            ddlIndustries.Visible = false;
            ddlTrades.Visible = false;
            ddlMaori.Visible = false;
            ddlFaculty.Focus();
        }
    }

    protected void ddlMaori_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlArts_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlTrades_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlIndustries_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlBusiness_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlHealth_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("GrantSummary.aspx");
    }
}







