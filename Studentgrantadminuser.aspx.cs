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

public partial class Studentgrantadminuser : System.Web.UI.Page
{
    decimal Check_Integer;
    decimal Check_Integer1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginAccepted"] != null)
        {
            if (Session["studentID"] != null)
            {
                StudentID.Text = Session["studentID"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd = new SqlCommand();
                //  SqlCommand cmd2 = new SqlCommand();

                cmd.CommandText = " Select year(DOB) as test,Main_Ethnicity from Student_Registration_Form where Student_ID=@Studentid";
                //  cmd2.CommandText = "Select SUM(grantvalue) as Funds,sum(ISNULL (Kuhafunds, 0)) as KohaFunds,(SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum from Student_vouchers  where Student_ID=@Studentid";
                cmd.Parameters.AddWithValue("@Studentid", StudentID.Text);

                cmd.Connection = con;

                con.Open();
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    string ab = dr["test"].ToString();
                    int num = Convert.ToInt32(ab);
                    int year = DateTime.Today.Year;
                    int new1 = year - num;
                    StudentAge.Text = new1.ToString();
                    StudentEthinicity.Text = dr["Main_Ethnicity"].ToString();


                }


                SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd2 = new SqlCommand();

                cmd2.CommandText = " Select SUM(grantvalue) as Funds,sum(ISNULL (Kuhafunds, 0)) as KohaFunds,(SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum from Student_vouchers  where Student_ID=@Studentid";

                cmd2.Parameters.AddWithValue("@Studentid", StudentID.Text);

                cmd2.Connection = con2;

                con2.Open();
                cmd2.ExecuteNonQuery();


                SqlDataReader dr1 = cmd2.ExecuteReader();
                while (dr1.Read())
                {
                    String abc = dr1["TotalGrantSum"].ToString();

                    if (abc == "")
                    {

                    }

                    else if (abc != " ")
                    {
                        int num1 = Convert.ToInt32(abc);
                        if (num1 > 1000)
                        {

                            Response.Write("<script>alert('Grant Limit has already exceeded for the Student..!!')</script>");
                            Button1.Visible = true;
                            Button2.Visible = true;
                            VoucherType.Enabled = false;
                            VoucherValue.Enabled = false;
                            GrantDescriptiontxt.Enabled = false;
                            txbKuha.Enabled = false;
                            SubmitVoucher.Enabled = false;
                        }
                        else if (num1 < 1000)
                        {

                        }
                    }

                }

            }
            else
            {
                Response.Redirect("Login_Page.aspx");
            }

            //} }
        }
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (VoucherType.SelectedValue == "Hardship")
        {
            GrantDescriptionLbl.Text = "Grant Description: ";
            lblValue.Text = " Funds:";
            lblValue.Font.Bold = true;
            GrantDescriptionLbl.Font.Bold = true;
            GrantDescriptiontxt.Enabled = true;
            lblKoha.Font.Bold = true;
            txbKuha.Enabled = true;
            VoucherValue.Enabled = true;
            GrantDescriptiontxt.Text = "";

            lblKoha.ForeColor = System.Drawing.Color.Red;
            lblValue.ForeColor = System.Drawing.Color.Red;
            GrantDescriptionLbl.ForeColor = System.Drawing.Color.Red;

        }
        else if (VoucherType.SelectedValue == "")
        {
            GrantDescriptiontxt.Enabled = false;
            VoucherValue.Enabled = false;
            txbKuha.Enabled = false;

            lblKoha.ForeColor = System.Drawing.Color.Black;
            lblValue.ForeColor = System.Drawing.Color.Black;
            GrantDescriptionLbl.ForeColor = System.Drawing.Color.Black;
        }
        else if (VoucherType.SelectedValue == "Advice")
        {
            GrantDescriptionLbl.Text = "Advice Description:";
            lblValue.Font.Bold = false;
            GrantDescriptionLbl.Font.Bold = true;
            GrantDescriptiontxt.Enabled = true;
            lblKoha.Font.Bold = false;
            txbKuha.Enabled = false;
            VoucherValue.Enabled = false;
            GrantDescriptiontxt.Text = "";

            lblKoha.ForeColor = System.Drawing.Color.Black;
            lblValue.ForeColor = System.Drawing.Color.Black;
            GrantDescriptionLbl.ForeColor = System.Drawing.Color.Red;

            // GrantDescriptiontxt.Width = 194;
            // GrantDescriptiontxt.Height = 121;
            // GrantDescriptiontxt.TextMode = MultiLine;
        }
        else
        {
            lblValue.Text = "Voucher Value:";
            lblValue.Font.Bold = true;
            GrantDescriptionLbl.Font.Bold = false;
            GrantDescriptiontxt.Enabled = false;
            lblKoha.Font.Bold = false;
            txbKuha.Enabled = false;
            VoucherValue.Enabled = true;

            lblKoha.ForeColor = System.Drawing.Color.Black;
            lblValue.ForeColor = System.Drawing.Color.Red;
            GrantDescriptionLbl.ForeColor = System.Drawing.Color.Black;
        }
    }
    protected void SubmitVoucher_Click(object sender, EventArgs e)
    {
        if (VoucherType.SelectedValue.ToString() == "Hardship")
        {
            if (GrantDescriptiontxt.Text != "")
            {
                if (VoucherValue.Text != "" || txbKuha.Text != "")
                {


                    SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                    SqlCommand cmd2 = new SqlCommand();

                    cmd2.CommandText = " Select SUM(grantvalue) as Funds,sum(ISNULL (Kuhafunds, 0)) as KohaFunds,(SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum from Student_vouchers  where Student_ID=@Studentid";

                    cmd2.Parameters.AddWithValue("@Studentid", StudentID.Text);

                    cmd2.Connection = con2;

                    con2.Open();
                    cmd2.ExecuteNonQuery();



                    SqlDataReader dr1 = cmd2.ExecuteReader();
                    while (dr1.Read())
                    {
                        String abc = dr1["TotalGrantSum"].ToString();
                        if (abc == "")
                        {
                            //  int num1 = Convert.ToInt32(abc);
                            string wcfa = VoucherValue.Text;
                            string abcd = txbKuha.Text;
                            int num2 = Convert.ToInt32(wcfa);
                            int num9 = Convert.ToInt32(abcd);
                            int num10 = num9 + num2;
                            // int num11 = num10 + num1;


                            if (num9 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            if (num2 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            if (num10 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            else
                            {
                                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                                SqlCommand cmd = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue,KuhaFunds,Age,Ethinicity) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue,@KuhaFunds,@Age,@Ethinicity)", con);


                                cmd.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                                cmd.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                                cmd.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                                cmd.Parameters.AddWithValue("@GrantValue", VoucherValue.Text);
                                cmd.Parameters.AddWithValue("@KuhaFunds", txbKuha.Text);
                                cmd.Parameters.AddWithValue("@Age", StudentAge.Text);
                                cmd.Parameters.AddWithValue("@Ethinicity", StudentEthinicity.Text);

                                con.Open();
                                cmd.ExecuteNonQuery();

                                Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                            }
                        }
                        else if (abc != "")
                        {
                            int num1 = Convert.ToInt32(abc);
                            string wcfa = VoucherValue.Text;
                            string abcd = txbKuha.Text;
                            int num2 = Convert.ToInt32(wcfa);
                            int num9 = Convert.ToInt32(abcd);
                            int num10 = num9 + num2;
                            int num11 = num10 + num1;
                            if (num9 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            if (num2 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            if (num10 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            if (num11 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            else
                            {
                                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                                SqlCommand cmd = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue,KuhaFunds,Age,Ethinicity) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue,@KuhaFunds,@Age,@Ethinicity)", con);


                                cmd.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                                cmd.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                                cmd.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                                cmd.Parameters.AddWithValue("@GrantValue", VoucherValue.Text);
                                cmd.Parameters.AddWithValue("@KuhaFunds", txbKuha.Text);
                                cmd.Parameters.AddWithValue("@Age", StudentAge.Text);
                                cmd.Parameters.AddWithValue("@Ethinicity", StudentEthinicity.Text);

                                con.Open();
                                cmd.ExecuteNonQuery();

                                Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                            }

                        }






                    }
                }
            }
        }


        else if (VoucherType.SelectedValue.ToString() == "PetrolVouchers" || VoucherType.SelectedValue.ToString() == "FoodVouchers" || VoucherType.SelectedValue.ToString() == "TrainTickets")
        {
            if (VoucherValue.Text != "")
            {
                if (VoucherValue.Text != "" || txbKuha.Text != "")
                {


                    SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                    SqlCommand cmd2 = new SqlCommand();

                    cmd2.CommandText = " Select SUM(grantvalue) as Funds,sum(ISNULL (Kuhafunds, 0)) as KohaFunds,(SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum from Student_vouchers  where Student_ID=@Studentid";

                    cmd2.Parameters.AddWithValue("@Studentid", StudentID.Text);

                    cmd2.Connection = con2;

                    con2.Open();
                    cmd2.ExecuteNonQuery();



                    SqlDataReader dr1 = cmd2.ExecuteReader();
                    while (dr1.Read())
                    {
                        String abc = dr1["TotalGrantSum"].ToString();
                        if (abc == "")
                        {
                            //  int num1 = Convert.ToInt32(abc);
                            string wcfa = VoucherValue.Text;
                            // string abcd = txbKuha.Text;
                            int num2 = Convert.ToInt32(wcfa);
                            //   int num9 = Convert.ToInt32(abcd);
                            //  int num10 = num9 + num2;
                            // int num11 = num10 + num1;


                            if (num2 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }

                            else
                            {
                                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                                SqlCommand cmd = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue,Age,Ethinicity) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue,@Age,@Ethinicity)", con);


                                cmd.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                                cmd.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                                cmd.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                                cmd.Parameters.AddWithValue("@GrantValue", VoucherValue.Text);
                                //cmd.Parameters.AddWithValue("@KuhaFunds", txbKuha.Text);
                                cmd.Parameters.AddWithValue("@Age", StudentAge.Text);
                                cmd.Parameters.AddWithValue("@Ethinicity", StudentEthinicity.Text);

                                con.Open();
                                cmd.ExecuteNonQuery();

                                Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                            }
                        }
                        else if (abc != "")
                        {
                            int num1 = Convert.ToInt32(abc);
                            string wcfa = VoucherValue.Text;
                            //  string abcd = txbKuha.Text;
                            int num2 = Convert.ToInt32(wcfa);
                            //  int num9 = Convert.ToInt32(abcd);
                            int num10 = num1 + num2;
                            // int num11 = num10 + num1;

                            if (num2 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }
                            if (num10 > 1000)
                            {
                                Response.Write("<script>alert('Grant exceed..!!')</script>");
                            }

                            else
                            {
                                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                                SqlCommand cmd = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue,KuhaFunds,Age,Ethinicity) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue,@KuhaFunds,@Age,@Ethinicity)", con);


                                cmd.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                                cmd.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                                cmd.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                                cmd.Parameters.AddWithValue("@GrantValue", VoucherValue.Text);
                                cmd.Parameters.AddWithValue("@KuhaFunds", txbKuha.Text);
                                cmd.Parameters.AddWithValue("@Age", StudentAge.Text);
                                cmd.Parameters.AddWithValue("@Ethinicity", StudentEthinicity.Text);

                                con.Open();
                                cmd.ExecuteNonQuery();

                                Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                            }

                        }
                    }
                }

            }
        }





        else if (VoucherType.SelectedValue.ToString() == "Advice")
        {
            if (GrantDescriptiontxt.Text != "")
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                SqlCommand cmd = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue)", con);


                cmd.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                cmd.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                cmd.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                cmd.Parameters.AddWithValue("@GrantValue", 0);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                con.Close();

                // VoucherType.SelectedValue = "";
                GrantDescriptiontxt.Text = "";
                VoucherValue.Text = "";

                lblKoha.ForeColor = System.Drawing.Color.Black;
                lblValue.ForeColor = System.Drawing.Color.Black;
                GrantDescriptionLbl.ForeColor = System.Drawing.Color.Black;
            }


            else
            {
                Response.Write("<script>alert('Please Enter Advice Description ..!!')</script>");
            }
        }


        else if (VoucherType.SelectedValue == "" || VoucherValue.Text == "")
        {
            Response.Write("<script>alert('Please select Voucher Type')</script>");
        }
        else if (VoucherValue.Text == "")
        {
            Response.Write("<script>alert('Please input Value')</script>");
        }
        else
        {

            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

            SqlCommand cmd2 = new SqlCommand();

            cmd2.CommandText = " Select SUM(grantvalue) as Funds,sum(ISNULL (Kuhafunds, 0)) as KohaFunds,(SUM(grantvalue)+sum(ISNULL (Kuhafunds, 0))) as TotalGrantSum from Student_vouchers  where Student_ID=@Studentid";

            cmd2.Parameters.AddWithValue("@Studentid", StudentID.Text);

            cmd2.Connection = con2;

            con2.Open();
            cmd2.ExecuteNonQuery();



            SqlDataReader dr1 = cmd2.ExecuteReader();
            while (dr1.Read())
            {
                String abc = dr1["TotalGrantSum"].ToString();



                if (abc != "")
                {
                    int num1 = Convert.ToInt32(abc);


                    string wcfa = VoucherValue.Text;

                    int num3 = Convert.ToInt32(wcfa);


                    int num7 = num3 + num1;


                    if (num7 > 1000)
                    {
                        Response.Write("<script>alert('Grant exceed..!!')</script>");

                    }
                    else
                    {
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                        SqlCommand cmd = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue,KuhaFunds,Age,Ethinicity) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue,@KuhaFunds,@Age,@Ethinicity)", con);


                        cmd.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                        cmd.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                        cmd.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                        cmd.Parameters.AddWithValue("@GrantValue", VoucherValue.Text);
                        cmd.Parameters.AddWithValue("@KuhaFunds", txbKuha.Text);
                        cmd.Parameters.AddWithValue("@Age", StudentAge.Text);
                        cmd.Parameters.AddWithValue("@Ethinicity", StudentEthinicity.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                    }
                }
                else if (abc == " ")
                {
                    string wcf = VoucherValue.Text;

                    int num3 = Convert.ToInt32(wcf);
                    if (num3 > 1000)
                    {
                        Response.Write("<script>alert('Grant exceed..!!')</script>");
                    }
                    else
                    {
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                        SqlCommand cmd = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue,KuhaFunds,Age,Ethinicity) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue,@KuhaFunds,@Age,@Ethinicity)", con);


                        cmd.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                        cmd.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                        cmd.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                        cmd.Parameters.AddWithValue("@GrantValue", VoucherValue.Text);
                        cmd.Parameters.AddWithValue("@KuhaFunds", txbKuha.Text);
                        cmd.Parameters.AddWithValue("@Age", StudentAge.Text);
                        cmd.Parameters.AddWithValue("@Ethinicity", StudentEthinicity.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                    }
                }
                else
                {

                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["FinanceDBConnectionString1"].ConnectionString);

                    SqlCommand cmd1 = new SqlCommand("INSERT INTO Student_vouchers(Student_ID,GrantType,GrantDescription,GrantValue,Age,Ethinicity) VALUES (@Student_ID,@GrantType,@GrantDescription,@GrantValue,@Age,@Ethinicity)", con1);


                    cmd1.Parameters.AddWithValue("@Student_ID", StudentID.Text);
                    cmd1.Parameters.AddWithValue("@GrantType", VoucherType.Text);
                    cmd1.Parameters.AddWithValue("@GrantDescription", GrantDescriptiontxt.Text);
                    cmd1.Parameters.AddWithValue("@GrantValue", VoucherValue.Text);

                    cmd1.Parameters.AddWithValue("@Age", StudentAge.Text);
                    cmd1.Parameters.AddWithValue("@Ethinicity", StudentEthinicity.Text);

                    con1.Open();
                    cmd1.ExecuteNonQuery();



                    Response.Write("<script>alert('Grant Added Successfully..!!')</script>");
                    // con1.Close();


                }
            }
        }

    }




    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void VoucherValue_TextChanged(object sender, EventArgs e)
    {

        // string wcfa = VoucherValue.Text;

        // int num3 = Convert.ToInt32(wcfa);




        // if (num3> 1000)
        // {
        // Response.Write("<script>alert('Grant exceed..!!')</script>");

        // }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["StudentID"] = StudentID.Text;
        Response.Redirect("Studentgrantsummaryuser.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Studentgrantviewuser.aspx");
    }
}
