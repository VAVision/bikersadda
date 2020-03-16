using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conn;
    int amount;
    protected void Page_Load(object sender, EventArgs e)
    {
        a_link1.Attributes.Add("href", "homepage.aspx?Parameter=" + Server.UrlEncode(Server.UrlDecode(Request.QueryString["id"].ToString())));
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bikersaddaConnectionString1"].ConnectionString);

            conn.Open();

            string sqlquery = "SELECT * FROM [bike_details] WHERE bike_id= " + Server.UrlDecode(Request.QueryString["productid"].ToString());

            SqlCommand command = new SqlCommand(sqlquery, conn);
            SqlDataReader sReader;

            command.Parameters.Clear();
            sReader = command.ExecuteReader();
            while (sReader.Read())
            {
                title.Text = sReader["bike_name"].ToString();
                description.Text = sReader["colours"].ToString();
                description.Text = sReader["max_power"].ToString();
                description.Text = sReader["displacement"].ToString();
                description.Text = sReader["kerb_weight"].ToString();
                description.Text = sReader["fuel_type"].ToString();
                description.Text = sReader["no_of_gears"].ToString();
                description.Text = sReader["about"].ToString();
                Image1.ImageUrl = "Images/"+sReader["image"].ToString();
                Image2.ImageUrl = "Images/" + sReader["image1"].ToString();
                Image3.ImageUrl = "Images/" + sReader["image2"].ToString();
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            //Response.Write("error" + ex.ToString());
        }
        
    }
}