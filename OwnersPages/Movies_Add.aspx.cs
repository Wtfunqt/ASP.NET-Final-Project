using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Movies_Add : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SanjayDBConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("insert into allmovies values('" + txtTitle.Text
            + "','" + txtYear.Text + "','" + txtCompany.Text + "','" + txtDirector.Text + "','" +
            txtEditor.Text + "')", con);
        command.ExecuteNonQuery();
        con.Close();
        lblResult.Visible = true;
        lblResult.Text = "Movie was sucessfully added";
        txtTitle.Text = "";
        txtYear.Text = "";
        txtCompany.Text = "";
        txtDirector.Text = "";
        txtEditor.Text = "";
    }
}