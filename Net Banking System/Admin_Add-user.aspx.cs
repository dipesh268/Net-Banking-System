using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Add_user_Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int str,tran;
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
            SqlCommand cmd = new SqlCommand("INSERT INTO User_Master VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "'," + TextBox8.Text + ",'" + DropDownList2.SelectedValue.ToString() + "','" + TextBox11.Text + "'," + TextBox12.Text + "," + TextBox15.Text + "," + str + ",'" + TextBox13.Text + "','Confirm')", con);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("INSERT INTO Account_Master VALUES(" + str + ",'" + DropDownList1.SelectedValue.ToString() + "'," + TextBox17.Text + "," + TextBox17.Text + "," + TextBox17.Text + ")", con);
            cmd1.ExecuteNonQuery();
            SqlCommand cm = new SqlCommand("select max(tran_id) from tran_Master", con);
            SqlDataReader dr = cm.ExecuteReader();
            dr.Read();
            tran = Convert.ToInt32(dr[0]);
            tran++;
            dr.Close();

            String date = System.DateTime.Now.ToString("yyyy-MM-dd");
            string str5 = "Transfer from Admin";
            int Account1 = 1000000001;
            String month = System.DateTime.Now.ToString("MMMM");
            SqlCommand cmd4 = new SqlCommand("INSERT INTO Tran_Master VALUES(" + tran + ",'" + str5 + "'," + Account1 + "," + str + "," + TextBox17.Text + ",'" + date + "','" + month + "')", con);
            cmd4.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('New user registraction Successfully....');", true);
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}