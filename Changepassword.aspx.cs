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

public partial class Changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "Select Userid,password from User_Registration_Form";

        cmd1.Connection = con1;

        con1.Open();
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('Please input User ID')</script>");
                TextBox1.Focus();
            }

            else if (TextBox2.Text == "")
            {
                Response.Write("<script>alert('Please input Old password')</script>");
                TextBox2.Focus();
            }

            else if (TextBox3.Text == "")
            {
                Response.Write("<script>alert('Please input New password')</script>");
                TextBox3.Focus();
            }
            else if (dr["Userid"].ToString() == TextBox1.Text.Trim())
                {
                    if (dr["password"].ToString() != TextBox2.Text.Trim())
                    {
                        Response.Write("<script>alert('Old password is incorrect')</script>");

                    }
                }
            else if (dr["Userid"].ToString() != TextBox1.Text.Trim())
            {
                Response.Write("<script>alert('Please input right userid')</script>");
            }



                else
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);
                    string sql = "UPDATE User_Registration_Form SET password=@password WHERE Userid=@Userid";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    // SqlCommand cmd = new SqlCommand("UPDATE User_Registration_Form SET password=@password WHERE Userid=@Userid)",con);
                    cmd.Parameters.AddWithValue("@Userid", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox3.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('password changes successfully..!!!')</script>");

                    // TextBox1.Text = "";
                    // TextBox2.Text = "";
                    // TextBox3.Text = "";

                }
            }

        }
    }
