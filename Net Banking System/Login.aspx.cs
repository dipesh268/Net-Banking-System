using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session.RemoveAll();
            con.Open();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (RadioButton1.Checked == true)
            {
                // ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('The UserId and Password is wrong.. please try again..');", true);
                SqlCommand cmd = new SqlCommand("Select * from User_Master where Email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' and status='Confirm'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["Email"] = TextBox1.Text;
                    Response.Redirect("User_Account(Balance).aspx");


                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('The UserId and Password is wrong.. please try again..');", true);
                }

                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["id1"].Value = TextBox1.Text;
                    Response.Cookies["password1"].Value = TextBox2.Text;
                }
            }
            else if (RadioButton2.Checked == true)
            {
                SqlCommand cmd1 = new SqlCommand("Select * from Admin_Master where Email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    Session["Email1"] = TextBox1.Text;
                    Response.Redirect("Admin_Home.aspx");//?id=" +TextBox1.Text

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('The UserId and Password is wrong.. please try again..');", true);
                }

                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["id"].Value = TextBox1.Text;
                    Response.Cookies["password"].Value = TextBox2.Text;
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('The UserId and Password is wrong.. please try again..');", true);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}