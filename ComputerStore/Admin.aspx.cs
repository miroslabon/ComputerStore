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
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new
            SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }
            else
            {
                con.Open();
                LabelUser.Text = Session["admin"].ToString();
                con.Close();
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./Images/" +
                FileUpload1.FileName.ToString());

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Products values ('" + 
                TextBox1.Text.Replace("'","''") +
                "','" + TextBox2.Text.Replace("'", "''") + "'," + 
                TextBox3.Text + TextBox4.Text + ",'" + 
                FileUpload1.FileName.ToString() + "','" +
                DropDownList1.SelectedItem.Value + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            Response.Redirect("Admin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("Admin_Login.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
