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


public partial class Forgotpasword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
         ((Button)this.Master.FindControl("btnLogout")).Visible = false;
          //  Response.Cache.SetCacheability(HttpCacheability.NoCache);
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "Select Userid,security1,security2 from User_Registration_Form where Userid=@Userid";
        cmd1.Parameters.AddWithValue("@Userid", TextBox3.Text);
        cmd1.Connection = con1;

        con1.Open();
        cmd1.ExecuteNonQuery();
        SqlDataReader dr = cmd1.ExecuteReader();
        if (TextBox3.Text == "")
        {
            Response.Write("<script>alert('Please input User ID')</script>");
            TextBox1.Focus();
        }

        else if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('Please input Security question 1')</script>");
            TextBox2.Focus();
        }

        else if (TextBox2.Text == "")
        {
            Response.Write("<script>alert('Please input Security question 2')</script>");
            TextBox3.Focus();
        }
        else
        {
            while (dr.Read())
            {




                if (dr["Userid"].ToString() == TextBox3.Text.Trim())
                {


                    if (dr["security2"].ToString() != TextBox2.Text.Trim() && dr["security1"].ToString() != TextBox1.Text.Trim())
                    {
                        Response.Write("<script>alert('Wrong Answers')</script>");
                        return;
                    }
                    if (dr["security1"].ToString() != TextBox1.Text.Trim())
                    {
                        Response.Write("<script>alert('Security answer 1 is wrong')</script>");
                        return;
                    }
                    if (dr["security2"].ToString() != TextBox2.Text.Trim())
                    {
                        Response.Write("<script>alert('Security answer 2 is wrong')</script>");
                        return;
                    }
                    else
                    {
                        Response.Redirect("Newchangepassword.aspx");

                    }
                }

                else if (dr["Userid"].ToString() != TextBox3.Text.Trim())
                {

                    Response.Write("<script>alert('Invalid user')</script>");
                    return;
                }

            }
                





            


        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}

   

