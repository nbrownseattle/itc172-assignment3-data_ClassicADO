using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;//adds general data tools
using System.Data.SqlClient;//adds sql server data tools
using System.Configuration;//adds tools for talking to config file

/// <summary>
/// Summary description for LoginClass
/// </summary>
public class LoginClass
{
    SqlConnection connect;
    string user;
    string pass;

    public LoginClass(string userName, string password)
    {
        user = userName;
        pass = password;
        string connectString = 
            ConfigurationManager.ConnectionStrings["CommunityAssistConnection"].ToString();
        connect = new SqlConnection(connectString);
    }
    public int ValidateLogin()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = connect;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "usp_Login";
        cmd.Parameters.AddWithValue("@Email", user);
        cmd.Parameters.AddWithValue("@Password", pass);
        connect.Open();
        int result = cmd.ExecuteNonQuery();
        connect.Close();
        int key = 0;
        if(result != -1)
        {
            key = GetUserKey();
        }
        return key;
    }

    private int GetUserKey()
    {
        string sql = "SELECT Personkey FROM Person WHERE PersonEmail = @Email";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@Email", user);
        SqlDataReader reader = null;
        connect.Open();
        reader = cmd.ExecuteReader();
        int key = 0;
        while (reader.Read())
        {
            key = (int)reader["PersonKey"];
        }
        connect.Close();
        return key;
    }

}