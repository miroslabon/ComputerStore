using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ComputerStore

{
    public partial class Admin_Login : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            if (Session["New"] != null)
            {
                Response.Redirect("Admin_Login.aspx");
                Response.Write("Please Use Another Account");
            }
            else
            {
                con = new

                SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);

                con.Open();
                string user = txtUsername.Text.Trim();
                cmd.CommandText = "select * from Admin where Username='"
                + txtUsername.Text + "' and password='" + txtPass.Text + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "Admin");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["Admin"] = txtUsername;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Label1.Text = "Invalid Username or Password.";
                }
                
            }
           con.Close();

        }
    }
}
