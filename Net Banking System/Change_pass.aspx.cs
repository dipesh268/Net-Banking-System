using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Change_pass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    String pwd;
    int str, Account;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            Account = Convert.ToInt32(Session["Act_no"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT Email,password from User_Master where Account_no=" + Account + "", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            pwd = dr[1].ToString();
            TextBox5.Text = dr[0].ToString();
            dr.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
            
    }
    
    protected void Button2_Click(object sender, EventArgs e)
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
                        if (TextBox7.Text == oldpassword)
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Old Password is not set as new password');", true);
                        }
                        else
                        {
                            SqlCommand cmd3 = new SqlCommand("UPDATE User_Master SET password='" + TextBox7.Text + "' WHERE Account_no=" + Account + "", con);
                            cmd3.ExecuteNonQuery();
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Password change successfully....');", true);
                        }
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