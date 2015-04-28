using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ConnectionClass
/// </summary>
public static class ConnectionClass
{
    private static SqlConnection con;
    private static SqlCommand com;

    static ConnectionClass()
    {
        String connectionString = ConfigurationManager.ConnectionStrings["AdemirDBConnectionString"].ToString();
        con = new SqlConnection(connectionString);
        com = new SqlCommand("", con);
    }

    public static Account LoginUser(string login, string password)
    {
        string query = string.Format("select count(*) from accounts where username = '{0}'",login);
        com.CommandText = query;

        try
        {
            con.Open();
            int amountOfUsers = (int)com.ExecuteScalar();

            if (amountOfUsers == 1)
            {
                query = string.Format("select password from accounts where username = '{0}'", login);
                com.CommandText = query;
                string pass = com.ExecuteScalar().ToString();

                if (pass == password)
                {
                    query = string.Format("select usertype from accounts where username = '{0}'", login);
                    com.CommandText = query;
                    SqlDataReader reader = com.ExecuteReader();
                    Account account = null;

                    while (reader.Read())
                    {
                        string acctype = reader.GetString(0);
                        account = new Account(login, password, acctype);
                    }
                    return account;
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }
        finally
        {
            con.Close();
        }
    }

    public static string RegisterUser(Account account)
    {
        String query = String.Format("select count(*) from accounts where username = '{0}'", account.UserName);
        com.CommandText = query;

        try
        {
            con.Open();
            int amountOfUsers = (int)com.ExecuteScalar();

            if (amountOfUsers < 1)
            {
                query = string.Format("insert into accounts values ('{0}', '{1}', '{2}')", account.UserName, account.Password, account.UserType);
                com.CommandText = query;
                com.ExecuteNonQuery();
                return "User registered!";
            }
            else
            {
                return "A user with this name already exists";
            }
        }
        finally
        {
            con.Close();
        }
    }
}