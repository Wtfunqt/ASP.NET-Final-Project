using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            lblLogin.Text = "Welcome " + Session["login"].ToString();
            lblLogin.Visible = true;
            lBtnLogin.Text = "Logout";
        }
        else
        {
            lblLogin.Visible = false;
            lBtnLogin.Text = "Login";
        }
    }
    protected void lBtnLogin_Click(object sender, EventArgs e)
    {
        if (lBtnLogin.Text == "Login")
        {
            Response.Redirect("~/Account/Login.aspx");
        }
        else
        {
            Session.Clear();
            Response.Redirect("~/Pages/Home.aspx");
        }
    }
}
