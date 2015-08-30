using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Collections;

using System.Web.Security;


using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class AddUser1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] == null)
        {
            Response.Redirect("NewAdmin.aspx");
        }
    }
    protected void ButtonAddStudent_Click(object sender, System.EventArgs e)
    {

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "Select Userid from User_Registration_Form";
        cmd1.Connection = con1;
        con1.Open();
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        DateTime DOB;

        if (txbID1.Text == "")
        {
            Response.Write("<script>alert('Please input User ID')</script>");
            txbID1.Focus();
        }

        else if (txbFname1.Text == "")
        {
            Response.Write("<script>alert('Please enter the first name of the User')</script>");
            txbFname1.Focus();
        }
        else if (ddlFaculty1.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select the Faculty of the User')</script>");
            ddlFaculty1.Focus();
        }
        else if (ddlGender1.SelectedValue == "")
        {
            Response.Write("<script>alert('Please select the gender of the User')</script>");
            ddlGender1.Focus();
        }
        else if (txbDOB1.Text == "")
        {

            Response.Write("<script>alert('Please input the Date of Birth')</script>");
            txbDOB1.Focus();
        }
        else if (passwdbox.Text == "")
        {

            Response.Write("<script>alert('Please enter password')</script>");
            passwdbox.Focus();
        }
        else if (TextBox1.Text == "")
        {

            Response.Write("<script>alert('Please answer security question 1')</script>");
            TextBox1.Focus();
        }

        else if (TextBox2.Text == "")
        {

            Response.Write("<script>alert('Please answer security question 2')</script>");
            TextBox2.Focus();
        }

        else
        {

            while (dr.Read())
            {

                if (dr["Userid"].ToString() == txbID1.Text.Trim())
                {
                    Response.Write("<script>alert('User already exists')</script>");
                    return;
                }

            }

            try
            {

                DOB = Convert.ToDateTime(txbDOB1.Text);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd = new SqlCommand("INSERT INTO User_Registration_Form (Userid,Fname,Lname,Gender,DOB,Address1,Phone,Mobile,Email,Faculty,password,security1,security2) VALUES (@Userid,@Fname,@Lname,@Gender,@DOB,@Address1,@Phone,@Mobile,@Email,@Faculty,@password,@security1,@security2)", con);

                cmd.Parameters.AddWithValue("@Userid", txbID1.Text);
                cmd.Parameters.AddWithValue("@Fname", txbFname1.Text);
                cmd.Parameters.AddWithValue("@Lname", txbLname1.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender1.SelectedValue);
                cmd.Parameters.AddWithValue("@DOB", txbDOB1.Text);
                cmd.Parameters.AddWithValue("@Address1", txbAddress1.Text);

                cmd.Parameters.AddWithValue("@Phone", txbPhone1.Text);
                cmd.Parameters.AddWithValue("@Mobile", txbMobile1.Text);
                cmd.Parameters.AddWithValue("@Email", txbEmail1.Text);

                cmd.Parameters.AddWithValue("@Faculty", ddlFaculty1.SelectedValue);
                cmd.Parameters.AddWithValue("@password", passwdbox.Text);
                cmd.Parameters.AddWithValue("@security1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@security2", TextBox2.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Added Successfully..!!!')</script>");

                txbID1.Text = "";
                txbFname1.Text = "";
                txbLname1.Text = "";
                txbDOB1.Text = "";
                txbAddress1.Text = "";
                txbMobile1.Text = "";
                txbPhone1.Text = "";
                txbEmail1.Text = "";
                passwdbox.Text = "";

                ddlGender1.SelectedIndex = 0;

                ddlFaculty1.SelectedIndex = 0;


            }
            catch
            {
                Response.Write("<script>alert('Please input the right format for Date Of Birth')</script>");
                txbDOB1.Focus();
            }

        }


    }




    protected void ddlArts_SelectedIndexChanged(object sender, EventArgs e)
    {

    }




    protected void ddlIndustries_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void MainMenu_Click(object sender, EventArgs e)
    {
        Response.Redirect("Grantsumadmin.aspx");
    }
    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlFaculty_SelectedIndexChanged(object sender, System.EventArgs e)
    {

    }


    protected void txbDOB_TextChanged(object sender, System.EventArgs e)
    {

    }
    protected void passwdbox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("GrantSumadmin.aspx");
    }
}
