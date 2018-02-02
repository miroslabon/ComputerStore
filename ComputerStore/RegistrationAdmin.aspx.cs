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
    public partial class RegistrationAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection conn = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
                conn.Open();

                string checkuser = "select count (*) from Admin where Username= '" + txtUserName.Text + "'";
                SqlCommand com1 = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                conn.Close();

                if (temp == 1)
                {
                    Label1.Text = "Username already exist!";

                }
                else
                {
                    conn.Open();
                    string insertQuery = "insert into Admin (UserName, Password) values (@UserName,@Password)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);


                    com.Parameters.AddWithValue("@Username", txtUserName.Text);
                    com.Parameters.AddWithValue("@Password", txtPass.Text);


                    com.ExecuteNonQuery();

                    Label2.Text = "Registration is Successful!";

                    conn.Close();
                }
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}