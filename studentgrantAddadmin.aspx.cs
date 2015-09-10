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


public partial class studentgrantadmin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

        SqlCommand cmd = new SqlCommand("Insert into StudentGrant(Grant_Type) values (@Grant)", con);
        cmd.Parameters.AddWithValue("@Grant", TextBox1.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}