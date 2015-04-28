using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Playlist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdemirDBConnectionString"].ConnectionString);
    SqlCommand command = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if ((string)Session["type"] != "user")
        {
            Response.Redirect("~/Pages/PlaylistLogin.aspx");
        }
    }

    protected void btnDeleteFromPlaylist_Click(object sender, EventArgs e)
    {

        if (Session["login"] == null)
        {
            Label1.Text = "To delete from Playlist, Please log in!";
            Label1.Visible = true;


        }
        else
        {
            if (GridView1.SelectedIndex == -1)
            {
                lblSelectSomething.Text = "Please select a movie";
                lblSelectSomething.Visible = true;
            }
            else
            {
                lblSelectSomething.Text = "";
                int userId = 0;
                command = new SqlCommand("SELECT id from accounts where username = '" +
                    Session["login"].ToString() + "'", con);

                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        userId = Convert.ToInt32(reader[0]);
                    }

                }
                finally
                {
                    reader.Close();
                }

                command = new SqlCommand("delete from playlists where userid = " + userId + " and movieid =  (Select id from allmovies where title = '" + GridView1.SelectedRow.Cells[1].Text + "')", con);

                command.ExecuteNonQuery();
                con.Close();
                //lblResult.Visible = true;
                //lblResult.Text = "Movie was sucessfully added";
                //txtTitle.Text = "";
                //txtYear.Text = "";
                //txtCompany.Text = "";
                //txtDirector.Text = "";
                //txtEditor.Text = "";

                lblSelectSomething.Text = GridView1.SelectedRow.Cells[1].Text + " was deleted from Playlist";
                lblSelectSomething.Visible = true;
              
            }
        }
    }

    
}