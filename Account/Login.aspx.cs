using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Account account = ConnectionClass.LoginUser(txtName.Text, txtPassword.Text);

        if (account != null)
        {
            Session["login"] = account.UserName;
            Session["type"] = account.UserType;


            Response.Redirect("../AdminPages/HomeAdmin.aspx");
        }
        else
        {
            lblError.Text = "Login failed";
        }
    }
}