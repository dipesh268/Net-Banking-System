using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Profile_Update_Profile_ : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int str;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            str = Convert.ToInt32(Session["Act_no"].ToString());
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM User_Master WHERE Account_no='" + str + "'", con);
                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    TextBox1.Text = da.GetValue(0).ToString();
                    TextBox2.Text = da.GetValue(1).ToString();
                    TextBox3.Text = da.GetValue(2).ToString();
                    TextBox4.Text = da.GetValue(3).ToString();
                    TextBox5.Text = da.GetValue(4).ToString();
                    TextBox6.Text = da.GetValue(5).ToString();
                    TextBox7.Text = da.GetValue(6).ToString();
                    TextBox8.Text = da.GetValue(7).ToString();
                    TextBox9.Text = da.GetValue(8).ToString();
                    TextBox10.Text = da.GetValue(9).ToString();
                    TextBox11.Text = da.GetValue(10).ToString();
                    TextBox12.Text = da.GetValue(11).ToString();

                    String s1, s2;
                    s1 = da.GetValue(1).ToString();
                    s2 = da.GetValue(2).ToString();
                    String s3 = s1 + " " + s2;
                    Label1.Text = s3;
                }
                da.Close();
            }
            con.Close();
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
            con.Open();
            String qry = "UPDATE User_Master SET F_Name ='" + TextBox2.Text + "', L_Name ='" + TextBox3.Text + "', DOB ='" + TextBox4.Text + "', User_addr ='" + TextBox5.Text + "', City ='" + TextBox6.Text + "', State ='" + TextBox7.Text + "', Pincode =" + TextBox8.Text + ", Gender ='" + TextBox9.Text + "', Pan_card_no ='" + TextBox10.Text + "', Addhar_card_no =" + TextBox11.Text + ", phno =" + TextBox12.Text + " where Email='" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(qry, con);
            cmd1.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Your Profile Detail Updated Successfully....');", true);
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}