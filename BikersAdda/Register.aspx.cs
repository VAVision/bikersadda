using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bikersaddaConnectionString1"].ConnectionString);

            conn.Open();

            string insertQuery = "insert into [userdetail](name,email,password,contact,address)values (@name,@email,@password,@contact,@address)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@name", fname.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@password", contact.Text);
            cmd.Parameters.AddWithValue("@contact", psw.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<div class='alert alert - dismissible alert - success' style='background:green'><strong>Registration Completed</strong></div>");
            Response.AppendHeader("Refresh", "0.5;url=home.aspx");
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