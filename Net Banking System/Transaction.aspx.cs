using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Transaction : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    int acc2,acc1;
    int tran;
    protected void Page_Load(object sender, EventArgs e)
    {
        
            try
            {
                con.Open();

                acc1 = Convert.ToInt32(Session["Act_no"].ToString());
                SqlCommand cmd = new SqlCommand("SELECT * FROM User_Master WHERE Account_no=" + acc1 + "", con);
                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    String s1, s2;
                    s1 = da.GetValue(1).ToString();
                    s2 = da.GetValue(2).ToString();
                    String s3 = s1 + " " + s2;
                    TextBox2.Text = s3;
                    TextBox1.Text = da.GetValue(12).ToString();
                }
                da.Close();
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
            acc2 = Convert.ToInt32(TextBox4.Text);
            SqlCommand cmd = new SqlCommand("SELECT * FROM User_Master WHERE Account_no=" + acc2 + "", con);
            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                String s1, s2;
                s1 = da.GetValue(1).ToString();
                s2 = da.GetValue(2).ToString();
                String s3 = s1 + " " + s2;
                TextBox6.Text = s3.ToString();
            }
            da.Close();

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            int Account1 = Convert.ToInt32(Session["Act_no"].ToString());
            SqlCommand cmd5 = new SqlCommand("SELECT Current_Balance FROM Account_Master WHERE Account_no=" + Account1 + "", con);
            SqlDataReader da4 = cmd5.ExecuteReader();
            da4.Read();
            int money4 = Convert.ToInt32(da4[0]);
            int tra6 = Convert.ToInt32(TextBox3.Text);
            da4.Close();



            if (money4 > tra6)
            {
                SqlCommand cmd = new SqlCommand("SELECT Current_Balance FROM Account_Master WHERE Account_no=" + Account1 + "", con);
                SqlDataReader da = cmd.ExecuteReader();
                da.Read();
                int money = Convert.ToInt32(da[0]);
                int tra = Convert.ToInt32(TextBox3.Text);
                int total1 = money - tra;
                da.Close();
                SqlCommand cmd1 = new SqlCommand("UPDATE Account_Master SET Current_Balance=" + total1 + " WHERE Account_no=" + Account1 + "", con);
                cmd1.ExecuteNonQuery();



                int Account2 = Convert.ToInt32(TextBox4.Text);
                SqlCommand cmd2 = new SqlCommand("SELECT Current_Balance FROM Account_Master WHERE Account_no=" + Account2 + "", con);
                SqlDataReader da1 = cmd2.ExecuteReader();
                da1.Read();
                int money1 = Convert.ToInt32(da1[0]);
                int tra1 = Convert.ToInt32(TextBox3.Text);
                int total2 = money1 + tra1;

                da1.Close();
                SqlCommand cmd3 = new SqlCommand("UPDATE Account_Master SET Current_Balance=" + total2 + " WHERE Account_no=" + Account2 + "", con);
                cmd3.ExecuteNonQuery();

                SqlCommand cm = new SqlCommand("select max(tran_id) from tran_Master", con);
                SqlDataReader dr = cm.ExecuteReader();
                dr.Read();
                tran = Convert.ToInt32(dr[0]);
                tran++;
                dr.Close();

                String date = System.DateTime.Now.ToString("yyyy-MM-dd");
                string str = TextBox5.Text;
                String month = System.DateTime.Now.ToString("MMMM");
                SqlCommand cmd4 = new SqlCommand("INSERT INTO Tran_Master VALUES(" + tran + ",'" + str + "'," + Account1 + "," + Account2 + "," + TextBox3.Text + ",'" + date + "','" + month + "')", con);
                cmd4.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Transaction Successfully....');", true);
                con.Close();
            }
            else {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('You have not enough balance for transfer.');", true);
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
            TextBox5.Text = String.Empty;
            TextBox6.Text = String.Empty;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}