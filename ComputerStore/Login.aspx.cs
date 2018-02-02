using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ComputerStore
{
    public partial class Login : System.Web.UI.Page
    {

   

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void txtLogin_Click(object sender, EventArgs e)
        {


            if (Session["New"] != null)
            {
                Response.Redirect("Registration.aspx");
                Response.Write("You have No Records With This Details");
            }
            else
            {
                con = new

          SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
                con.Open();
                string user = txtUser.Text.Trim();
                cmd.CommandText = "select * from Registration where Username='"
                + txtUser.Text + "' and password='" + txtPassword.Text + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "Registration");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["New"] = txtUser.Text;
                    txtlog.Text = "You successfuly Log In";
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    txtError.Text = "Invalid Username or Password.";
                }
                con.Close();
            }


        }

    }
}
