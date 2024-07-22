using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registraction : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int str;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select max(Account_no) from User_Master", con);
            SqlDataReader dr = cmd2.ExecuteReader();
            dr.Read();
            str = Convert.ToInt32(dr[0]);
            str++;
            TextBox10.Text = str.ToString();
            dr.Close();
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
            SqlCommand cmd2 = new SqlCommand("select * from User_Master where Email='" + TextBox1.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('This Email account is already exist Please Enter new Email Id');", true);

            }
            else
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO User_Master VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "'," + TextBox8.Text + ",'" + DropDownList2.SelectedValue.ToString() + "','" + TextBox11.Text + "'," + TextBox12.Text + "," + TextBox15.Text + "," + str + ",'" + TextBox13.Text + "','pending')", con);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO Account_Master VALUES(" + str + ",'" + DropDownList1.SelectedValue.ToString() + "',0,0,0)", con);
                cmd1.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Your request is send to Admin wait for a while.');", true);
                Response.Redirect("Login.aspx");
                con.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
        
        
    }
}