using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Videos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
        //dropDownGenres.SelectedIndex = 3;
        //dropDownGenres.DataBind();
    }
    protected void dropDownGenres_SelectedIndexChanged(object sender, EventArgs e)
    {
       // GridView1.DataSourceID = SqlDataSourceMoviesByGenre.ID;
    }
  
}
    