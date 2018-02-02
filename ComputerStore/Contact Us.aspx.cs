using System;
using System.Net.Mail;
namespace ComputerStore
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("miroslabon@gmail.com");
                    mailMessage.To.Add("miroslabon@gmail.com");
                    mailMessage.Subject = txtSubject.Text;

                    mailMessage.Body = "<b>Sender Name : </b>" + txtName.Text + "<br/>"
                        + "<b>Sender Email : </b>" + txtEmail.Text + "<br/>"
                        + "<b>Comments : </b>" + txtComments.Text;
                    mailMessage.IsBodyHtml = true;

                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials =
                        new System.Net.NetworkCredential("miroslabon@gmail.com", "miroslabon1");
                    smtpClient.Send(mailMessage);

                    Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                    Label1.Text = "Thank you for Contacting us!";

                    txtName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtComments.Enabled = false;
                    txtSubject.Enabled = false;
                    Button1.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                // Log - Event Viewer or table
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "There is a system error. Please try again later";
            }
        }
    }
}
  