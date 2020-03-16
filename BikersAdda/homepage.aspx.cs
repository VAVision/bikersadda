using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        a_link1.Attributes.Add("href", "homepage.aspx?Parameter=" + Server.UrlEncode(Server.UrlDecode(Request.QueryString["Parameter"].ToString())));

        SqlDataSource SqlDataSource1 = new SqlDataSource();
        SqlDataSource1.ID = "SqlDataSource1";
        this.Page.Controls.Add(SqlDataSource1);
        SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["bikersaddaConnectionString1"].ConnectionString;
        SqlDataSource1.SelectCommand = "select * from bike_details";
        Repeater1.DataSource = SqlDataSource1;
        Repeater1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Default2.aspx");
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        //string message = "Customer Id: " + (item.FindControl("HiddenField1") as HiddenField).Value;
        //Response.Write(message);
        Response.Redirect("Default2.aspx?id=" + Server.UrlEncode(Server.UrlDecode(Request.QueryString["Parameter"].ToString())) + " &productid=" + (item.FindControl("HiddenField1") as HiddenField).Value);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Default2.aspx");
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        //string message = "Customer Id: " + (item.FindControl("HiddenField1") as HiddenField).Value;
        //Response.Write(message);
        Response.Redirect("comparebike.aspx?id=" + Server.UrlEncode(Server.UrlDecode(Request.QueryString["Parameter"].ToString())) + " &productid=" + (item.FindControl("HiddenField1") as HiddenField).Value);
    }
}