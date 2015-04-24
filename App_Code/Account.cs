using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Account
/// </summary>
public class Account
{
    public int ID { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    public string UserType { get; set; }

    public Account(int ID, string UserName, string Password, string UserType)
    {
        this.ID = ID;
        this.UserName = UserName;
        this.Password = Password;
        this.UserType = UserType;
    }

    public Account(string UserName, string Password, string UserType)
    {
        this.UserName = UserName;
        this.Password = Password;
        this.UserType = UserType;
    }
}

