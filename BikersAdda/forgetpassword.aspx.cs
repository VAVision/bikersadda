using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Net.Mail;
using System.Web.UI.WebControls;
using System.Net;

public partial class forgetpassword : System.Web.UI.Page
{
    SqlConnection conn;
    String email_id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string mail(string email_id, String pass)
    {
        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("viveknadar97@gmail.com", "vivek981924");
            MailMessage msg = new MailMessage();
            msg.To.Add(email_id);
            msg.From = new MailAddress("viveknadar97@gmail.com");
            msg.Subject = "PASSWORD";
            msg.Body = pass;
            String mess = "E_mail has been send Successfully";
            client.Send(msg);
            return mess;
        }
        catch (Exception ex)
        {
            return "" + ex.Message;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        email_id = email.Text;
        try
        {
            //Response.Write(email_id);
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bikersaddaConnectionString1"].ConnectionString);

            conn.Open();

            string sqlquery = "SELECT * FROM [userdetail] WHERE email= @email";

            SqlCommand command = new SqlCommand(sqlquery, conn);
            SqlDataReader sReader;

            command.Parameters.Clear();
            command.Parameters.AddWithValue("@email", email_id);
            sReader = command.ExecuteReader();

            while (sReader.Read())
            {
                //Response.Write(sReader["name"].ToString());
                String msg = "Hi Mr/Ms " + sReader["name"].ToString() + "\n\n\nThis is your password\n\n PASSWORD: " + sReader["password"].ToString();
                String result = mail(email_id, msg);
                //Response.Write(msg+" "+result);
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            //Response.Write("error" + ex.ToString());
        }
        Response.Write("<div class='alert alert-dismissible alert-danger' style='background:Green'><strong>Your Password has been shared successfully....Thanks for using our service</strong></div>");
        Response.AppendHeader("Refresh", "0.5;url=home.aspx");
    }
}