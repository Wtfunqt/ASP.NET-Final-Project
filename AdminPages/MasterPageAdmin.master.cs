﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["type"] != "admin")
        {
            Response.Redirect("~/OwnersPages/HomeOwner.aspx");
        }
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Pages/Home.aspx");
    }
}