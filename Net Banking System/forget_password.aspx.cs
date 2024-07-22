using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class forget_password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    String pwd;
    int str, Account;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string oldpassword = TextBox6.Text;
            if (pwd.Equals(oldpassword))
            {
                if (TextBox7.Text == TextBox8.Text)
                {
                    if (TextBox7.Text == "" && TextBox8.Text == "")
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please enter You  new Password....');", true);
                    }
                    else
                    {
                        SqlCommand cmd3 = new SqlCommand("UPDATE User_Master SET password='" + TextBox7.Text + "' WHERE Account_no=" + TextBox6.Text + " and Email='" + TextBox5.Text + "'", con);
                        cmd3.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Password change successfully....');", true);

                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Check the password');", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please enter valid old password.....');", true);
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}