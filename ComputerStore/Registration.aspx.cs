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
    public partial class Registration : System.Web.UI.Page
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

                string checkuser = "select count (*) from Registration where Email= '" + txtEmail.Text + "'";
                SqlCommand com1 = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                conn.Close();

                if (temp == 1)
                {
                    lblRegister.Text = "Email already exist!";

                }
                else
                {
                    conn.Open();
                    string insertQuery = "insert into Registration (UserName, Email, Password, Country, Gender) values (@UserName, @Email, @Password, @Country, @Gender)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);

                
                    com.Parameters.AddWithValue("@Username", txtUserName.Text);
                    com.Parameters.AddWithValue("@Email", txtEmail.Text);
                    com.Parameters.AddWithValue("@Password", txtPass1.Text);
                    com.Parameters.AddWithValue("@Country", DropDownListCountry.SelectedItem.Text);
                    com.Parameters.AddWithValue("@Gender", DropDownListGender.SelectedItem.Text);

                    com.ExecuteNonQuery();

                    lblRegister.Text = "Registration is Successful!";

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