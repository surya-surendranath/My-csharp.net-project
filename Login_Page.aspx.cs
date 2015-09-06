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

public partial class Login_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ((Button)this.Master.FindControl("btnLogout")).Visible = false;
        ((Button)this.Master.FindControl("btnMenu")).Visible = false;
        txbLogin.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select Userid,password from User_Registration_Form";

        cmd.Connection = con;
       
        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {

            if (dr["Userid"].ToString() == txbLogin.Text.Trim() && dr["password"].ToString() == txbPassword.Text)
            {
                Session["LoginAccepted"] = txbLogin.Text;
                Response.Redirect("GrantSummary.aspx");
                return;
            }

            else if (txbLogin.Text == "")
            {
                lblError.Text = "Please enter LoginID";
                lblError.Visible = true;
                Response.Write("<script>alert('Please enter LoginID')</script>");
            }
            else if (txbPassword.Text == "")
            {
                lblError.Text = "Please enter Password";
                lblError.Visible = true;
            }
            else if (dr["Userid"].ToString() != txbLogin.Text.Trim() && dr["password"].ToString() == txbPassword.Text)
            {
                lblError.Text = "Please enter correct LoginID";
                lblError.Visible = true;
            }
            else if (dr["Userid"].ToString() == txbLogin.Text.Trim() && dr["password"].ToString() != txbPassword.Text)
            {
                lblError.Text = "Please enter a valid Password";
                lblError.Visible = true;
            }
            else
            {
                lblError.Text = "Invalid User ID or Password";
                lblError.Visible = true;
            }
        }
    }
    protected void Forgorpwd_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("Forgotpasword.aspx");
    }
    protected void txbPassword_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txbLogin_TextChanged(object sender, EventArgs e)
    {

    }
}
