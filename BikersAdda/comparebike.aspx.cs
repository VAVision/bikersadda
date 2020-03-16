using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class comparebike : System.Web.UI.Page
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
                Label1.Text = sReader["bike_name"].ToString();
                Label2.Text = sReader["colours"].ToString();
                Label2.Text = sReader["max_power"].ToString();
                Label2.Text = sReader["displacement"].ToString();
                Label2.Text = sReader["kerb_weight"].ToString();
                Label2.Text = sReader["fuel_type"].ToString();
                Label2.Text = sReader["no_of_gears"].ToString();
                Label2.Text = sReader["about"].ToString();
                Image1.ImageUrl = "Images/" + sReader["image"].ToString();
                Image4.ImageUrl = "Images/" + sReader["image1"].ToString();
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            //Response.Write("error" + ex.ToString());
        }
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }
    private void BindData()
    {
        SqlDataSource SqlDataSource1 = new SqlDataSource();
        SqlDataSource1.ID = "SqlDataSource1";
        this.Page.Controls.Add(SqlDataSource1);
        SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["bikersaddaConnectionString1"].ConnectionString;
        SqlDataSource1.SelectCommand = "select * from bike_details";
        ListView1.DataSource = SqlDataSource1;
        ListView1.DataBind();
    }

    protected void ListView1_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
    {
        ListView1.SelectedIndex = e.NewSelectedIndex;

        string pid = ListView1.SelectedDataKey.Value.ToString();
        
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bikersaddaConnectionString1"].ConnectionString);

            conn.Open();

            string sqlquery = "SELECT * FROM [bike_details] WHERE bike_id= " + pid;

            SqlCommand command = new SqlCommand(sqlquery, conn);
            SqlDataReader sReader;

            command.Parameters.Clear();
            sReader = command.ExecuteReader();
            while (sReader.Read())
            {
                Label1.Text = sReader["bike_name"].ToString();
                Label2.Text = sReader["colours"].ToString();
                Label2.Text = sReader["max_power"].ToString();
                Label2.Text = sReader["displacement"].ToString();
                Label2.Text = sReader["kerb_weight"].ToString();
                Label2.Text = sReader["fuel_type"].ToString();
                Label2.Text = sReader["no_of_gears"].ToString();
                Label2.Text = sReader["about"].ToString();
                Image1.ImageUrl = "Images/" + sReader["image"].ToString();
                Image4.ImageUrl = "Images/" + sReader["image1"].ToString();
                Label1.Visible = true;
                Label2.Visible = true;
                Image4.Visible = true;
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            //Response.Write("error" + ex.ToString());
        }

        BindData();
    }
}