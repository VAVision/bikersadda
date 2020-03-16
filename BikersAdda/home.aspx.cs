using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bikersaddaConnectionString1"].ConnectionString);

            conn.Open();

            string sqlquery = "SELECT * FROM [userdetail] WHERE email = @email and password=@password";

            SqlCommand command = new SqlCommand(sqlquery, conn);
            SqlDataReader sReader;

            command.Parameters.Clear();
            command.Parameters.AddWithValue("@email", name.Text);
            command.Parameters.AddWithValue("@password", pwd.Text);
            sReader = command.ExecuteReader();

            while (sReader.Read())
            {
                if (name.Text == sReader["email"].ToString() && pwd.Text == sReader["password"].ToString())
                {
                    Response.Redirect("homepage.aspx?Parameter=" + Server.UrlEncode(sReader["user_id"].ToString()));
                }
                else
                {
                    Response.Write("<div class='alert alert-dismissible alert-danger' style='background:red'><strong>Create your profile</strong></div>");
                    Response.AppendHeader("Refresh", "0.5;url=home.aspx");
                }
            }
            Response.Write("<div class='alert alert-dismissible alert-danger' style='background:red'><strong>Create your profile</strong></div>");
            Response.AppendHeader("Refresh", "0.5;url=home.aspx");
            conn.Close();
        }
        catch (Exception ex)
        {
            //Response.Write("error" + ex.ToString());
        }
        finally
        {
            conn.Close();
        }
    }
}