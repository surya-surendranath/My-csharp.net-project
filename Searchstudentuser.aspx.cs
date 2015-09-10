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


public partial class Searchstudentuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            Session["studentID"] = "";
            Page.Form.DefaultButton = btnSearch.UniqueID;
            txtSearchID.Focus();
        }
        else
        {
            Response.Redirect("Userloginpage.aspx");
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select Student_ID,Fname from Student_Registration_Form";


        cmd.Connection = con;

        if (con.State == ConnectionState.Closed) con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            if (dr["Student_ID"].ToString() == txtSearchID.Text.Trim())
            {
                Session["studentID"] = txtSearchID.Text;
                Response.Redirect("Displayinfouser.aspx");
                return;
            }
            else if (dr["Fname"].ToString() == txtSearchID.Text.Trim())
            {
                Session["studentID"] = txtSearchID.Text;
                Response.Redirect("Displayinfouser.aspx");
                return;
            }
            else if (txtSearchID.Text == "")
            {
                Response.Redirect("Displayinfouser.aspx");
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Student not present";
            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addstudentuser.aspx");
    }
    protected void txtSearchID_TextChanged(object sender, EventArgs e)
    {

    }
}