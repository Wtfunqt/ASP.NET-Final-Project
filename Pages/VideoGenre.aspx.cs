using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VideoGenre : System.Web.UI.Page
{
   
    /// <summary>
    /// /////////////////////////////
    /// </summary>

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SanjayDBConnectionString"].ConnectionString);
    SqlCommand command = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
   
    /// <summary>
    /// //////////////////////////////////////
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Label1.Text = GridView1.SelectedRow.Cells[1].Text;
    }
    protected void btnAddToPlaylist_Click(object sender, EventArgs e)
    {
        
        if (Session["login"] == null){
            Label1.Text = "To add to Playlist, Please log in!";
            Label1.Visible  =true  ;
            
            
        }
        else{
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

                command = new SqlCommand("insert into playlists(userid,movieid) values('" +
                    userId + "','" + GridView1.SelectedRow.Cells[1].Text + "')", con);

                command.ExecuteNonQuery();
                con.Close();
                //lblResult.Visible = true;
                //lblResult.Text = "Movie was sucessfully added";
                //txtTitle.Text = "";
                //txtYear.Text = "";
                //txtCompany.Text = "";
                //txtDirector.Text = "";
                //txtEditor.Text = "";
                
                lblSelectSomething.Text = GridView1.SelectedRow.Cells[2].Text + " added to the Playlisy";
                lblSelectSomething.Visible = true;
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblSelectSomething.Text = "";
    }
}